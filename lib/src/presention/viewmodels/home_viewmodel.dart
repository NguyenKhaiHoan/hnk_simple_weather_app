import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:hnk_simple_weather_app/src/core/base/base_viewmodel.dart';
import 'package:hnk_simple_weather_app/src/core/enums/temperature_unit.dart';
import 'package:hnk_simple_weather_app/src/core/enums/weather_code.dart';
import 'package:hnk_simple_weather_app/src/core/service/location_service.dart';
import 'package:hnk_simple_weather_app/src/core/utils/unit_convert_util.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/responses/daily_entity.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/responses/hourly_entity.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/responses/weather_entity.dart';
import 'package:hnk_simple_weather_app/src/domain/usecases/get_daily_weather.dart';
import 'package:hnk_simple_weather_app/src/domain/usecases/get_hourly_weather.dart';
import 'package:hnk_simple_weather_app/src/domain/usecases/search_location.dart';
import 'package:intl/intl.dart';

import '../../domain/entities/requests/weather_request.dart';

class HomeViewModel extends BaseViewModel {
  HomeViewModel({
    required GetDailyWeatherUseCase getDailyWeatherUseCase,
    required GetHourlyWeatherUseCase getHourlyWeatherUseCase,
    required SearchLocationUseCase searchLocationUseCase,
    required LocationService locationService,
  })  : _getDailyWeatherUseCase = getDailyWeatherUseCase,
        _getHourlyWeatherUseCase = getHourlyWeatherUseCase,
        _searchLocationUseCase = searchLocationUseCase,
        _locationService = locationService;

  final GetDailyWeatherUseCase _getDailyWeatherUseCase;
  final GetHourlyWeatherUseCase _getHourlyWeatherUseCase;
  final SearchLocationUseCase _searchLocationUseCase;

  final LocationService _locationService;

  bool _isFirstTime = true;
  String _city = '';
  String _country = '';
  double? _latitude;
  double? _longitude;
  var _weather = WeatherEntity.empty;

  bool get isFirstTime => _isFirstTime;
  String get city => _city;
  String get country => _country;
  double? get latitude => _latitude;
  double? get longitude => _longitude;
  WeatherEntity get weather => _weather;

  void setIsFirstTime(bool value) {
    if (_isFirstTime != value) {
      _isFirstTime = value;
    }
  }

  void _setCityAndCountry(String city, String country) {
    if (_city != city || _country != country) {
      _city = city;
      _country = country;
      notifyListeners();
    }
  }

  void setPosition(
      {required double newLatitude, required double newLongitude}) {
    if (_latitude != newLatitude || _longitude != newLongitude) {
      _latitude = newLatitude;
      _longitude = newLongitude;
      notifyListeners();
    }
  }

  Future<void> initializeHomeView() async {
    showLoading();
    await _fetchLocation();
    hideLoading();
    _fetchWeatherData();
  }

  Future<void> _fetchLocation() async {
    try {
      if (await _locationService.checkPermission()) {
        final position = await _locationService.getCurrentPosition();
        await _fetchCityAndCountry(
            newLatitude: position.latitude, newLongitude: position.longitude);
      } else {
        print('Location permission denied');
      }
    } catch (e) {
      print('Error fetching location: $e');
    }
  }

  Future<void> _fetchCityAndCountry(
      {required double newLatitude, required double newLongitude}) async {
    try {
      setPosition(newLatitude: newLatitude, newLongitude: newLongitude);
      final placemarks = await placemarkFromCoordinates(
        newLatitude,
        newLongitude,
      );
      if (placemarks.isNotEmpty) {
        final placemark = placemarks.first;
        _setCityAndCountry(
          placemark.administrativeArea ?? 'Unknown',
          placemark.country ?? 'Unknown',
        );
      }
    } catch (e) {
      print('Error fetching city and country: $e');
    }
  }

  Future<void> _fetchWeatherData() async {
    await getHourlyWeather();
    await getDailyWeather();
  }

  Future<void> getHourlyWeather() async {
    final weatherResponse = await _getHourlyWeatherUseCase.call(
      params: WeatherRequest(
          latitude: latitude ?? 0.0, longitude: longitude ?? 0.0),
    );

    weatherResponse.fold(
      (error) {
        errorPageState(error);
      },
      (data) {
        _weather = weather != WeatherEntity.empty
            ? _weather.copyWith(hourly: data.hourly)
            : data;
      },
    );

    notifyListeners();
  }

  Future<void> getDailyWeather() async {
    final weatherResponse = await _getDailyWeatherUseCase.call(
      params: WeatherRequest(
          latitude: latitude ?? 0.0, longitude: longitude ?? 0.0),
    );

    weatherResponse.fold(
      (error) {
        errorPageState(error);
      },
      (data) {
        _weather = weather != WeatherEntity.empty
            ? _weather.copyWith(daily: data.daily)
            : data;
      },
    );

    notifyListeners();
  }

  List<String> getHourlyTimesForToday() {
    final hourly = weather.hourly;
    if (hourly == null || hourly == HourlyEntity.empty || hourly.time == null) {
      return [];
    }

    final todayIndex = _getDayIndexByTimes(hourly.time!, 0);
    return hourly.time!
        .skip(todayIndex)
        .take(24)
        .map((time) => DateFormat('hh:mm a').format(time))
        .toList();
  }

  List<Weather> getHourlyWeatherForToday() {
    final hourly = weather.hourly;
    if (hourly == null || hourly == HourlyEntity.empty || hourly.time == null) {
      return [];
    }

    final todayIndex = _getDayIndexByTimes(hourly.time!, 0);
    return hourly.weatherCode!
        .skip(todayIndex)
        .take(24)
        .map((code) => Weather.getWeatherFromCode(code))
        .toList();
  }

  List<String> getHourlyTemperaturesForToday(
      {TemperatureUnit unit = TemperatureUnit.c}) {
    final hourly = weather.hourly;
    if (hourly == null ||
        hourly == HourlyEntity.empty ||
        hourly.temperature2m == null ||
        hourly.time == null) {
      return [];
    }

    final todayIndex = _getDayIndexByTimes(hourly.time!, 0);
    return hourly.temperature2m!
        .skip(todayIndex)
        .take(24)
        .map((temp) => getHourlyTemp(temp: temp, unit: unit))
        .toList();
  }

  String getHourlyTemp(
      {TemperatureUnit unit = TemperatureUnit.c, required double temp}) {
    final tempUnitText = unit == TemperatureUnit.c ? "°C" : "°F";
    final convertedTemp = unit == TemperatureUnit.c
        ? temp.toStringAsFixed(0)
        : UnitConverterUtil.celsiusToFahrenheit(temp).toStringAsFixed(0);
    return '$convertedTemp$tempUnitText';
  }

  int _getDayIndexByTimes(List<DateTime>? times, int addDay) {
    if (times == null) return -1;
    final targetDate = DateTime.now().add(Duration(days: addDay));

    return times.indexWhere((date) =>
        date.day == targetDate.day &&
        date.month == targetDate.month &&
        date.year == targetDate.year);
  }

  String getCurrentTemperatureHourly(
      {TemperatureUnit unit = TemperatureUnit.c}) {
    final hourly = weather.hourly;
    if (hourly == null || hourly == HourlyEntity.empty) {
      return "";
    }

    final timeIndex = _getTimeIndex(times: hourly.time);
    if (timeIndex == -1) return '';
    final temp = hourly.temperature2m?[timeIndex] ?? 0.0;
    final temperature = unit == TemperatureUnit.c
        ? temp
        : UnitConverterUtil.celsiusToFahrenheit(temp);
    return "${temperature.toStringAsFixed(0)}${unit == TemperatureUnit.c ? '°C' : '°F'}";
  }

  Weather getCurrentWeatherHourly() {
    final hourly = weather.hourly;
    if (hourly == null || hourly == HourlyEntity.empty) {
      return Weather.unknown;
    }

    final timeIndex = _getTimeIndex(times: hourly.time);
    if (timeIndex == -1) return Weather.unknown;
    final code = hourly.weatherCode?[timeIndex] ?? 0;
    return Weather.getWeatherFromCode(code);
  }

  int _getTimeIndex({required List<DateTime>? times}) {
    if (times == null) return -1;
    final now = DateTime.now().toUtc();
    for (int i = 0; i < times.length - 1; i++) {
      final start = times[i];
      final end = times[i + 1];
      if (now.isAfter(start) && now.isBefore(end)) {
        return i;
      }
    }
    return -1;
  }

  String getCurrentWind() {
    final hourly = weather.hourly;
    if (hourly == null || hourly == HourlyEntity.empty) {
      return "";
    }

    final timeIndex = _getTimeIndex(times: hourly.time);
    if (timeIndex == -1) return '';
    final windSpeed = hourly.windSpeed10m?[timeIndex] ?? 0.0;
    return "${windSpeed.toStringAsFixed(0)} km/h";
  }

  String getCurrentPressure() {
    final hourly = weather.hourly;
    if (hourly == null || hourly == HourlyEntity.empty) {
      return "";
    }

    final timeIndex = _getTimeIndex(times: hourly.time);
    if (timeIndex == -1) return '';
    final pressure = hourly.surfacePressure?[timeIndex] ?? 0.0;
    return "${pressure.toStringAsFixed(0)} hPa";
  }

  String getCurrentHumidity() {
    final hourly = weather.hourly;
    if (hourly == null || hourly == HourlyEntity.empty) {
      return "";
    }

    final timeIndex = _getTimeIndex(times: hourly.time);
    if (timeIndex == -1) return '';
    final humidity = hourly.relativeHumidity2m?[timeIndex] ?? 0.0;
    return "${humidity.toStringAsFixed(0)}%";
  }

  String getCurrentTimeHourly() {
    final now = DateTime.now();
    return DateFormat('EEE, MMMM d  h:mm a').format(now);
  }

  String getTemperatureDaily(
      {TemperatureUnit unit = TemperatureUnit.c, required int addDay}) {
    final daily = weather.daily;
    if (daily == null || daily == DailyEntity.empty) {
      return '';
    }

    final dayIndex = _getDayIndexByTimes(daily.time, addDay);
    if (dayIndex == -1) return '';
    final minTemp = daily.temperature2MMin?[dayIndex] ?? 0;
    final maxTemp = daily.temperature2MMax?[dayIndex] ?? 0;
    final avgTemp = (minTemp + maxTemp) / 2;
    final temperature = unit == TemperatureUnit.c
        ? avgTemp
        : UnitConverterUtil.celsiusToFahrenheit(avgTemp);
    return "${temperature.toStringAsFixed(0)}${unit == TemperatureUnit.c ? '°C' : '°F'}";
  }

  String getTimeDaily(int addDay) {
    final targetDate = DateTime.now().add(Duration(days: addDay));
    return DateFormat('MMMM d, yyyy').format(targetDate);
  }

  Weather getWeatherHourlyFromCode() {
    return Weather.unknown;
  }

  Weather getWeatherDailyFromCode(int addDay) {
    final daily = weather.daily;
    if (daily != null || daily != DailyEntity.empty) {
      if (daily!.time != null && daily.time?.isNotEmpty == true) {
        final dayIndex = _getDayIndexByTimes(daily.time, addDay);
        if (dayIndex != -1 && daily.weatherCode != null) {
          return Weather.getWeatherFromCode(daily.weatherCode![dayIndex]);
        }
      }
    }
    return Weather.unknown;
  }

  Future<void> fetchLocation() async {
    final weatherResponse = await _getDailyWeatherUseCase.call(
      params: WeatherRequest(
          latitude: latitude ?? 0.0, longitude: longitude ?? 0.0),
    );

    weatherResponse.fold(
      (error) {
        resetPageState();
        errorPageState(error);
      },
      (data) {
        _weather = weather != WeatherEntity.empty
            ? _weather.copyWith(daily: data.daily)
            : data;
      },
    );

    notifyListeners();
  }

  Future<void> searchWeatherLocation(String value) async {
    showLoading();
    _setSearchText(value);
    await searchLocation();
    hideLoading();
    _fetchWeatherData();
  }

  Future<void> searchLocation() async {
    final locationSearchResponse = await _searchLocationUseCase.call(
      params: searchText,
    );

    locationSearchResponse.fold(
      (error) {
        resetPageState();
        errorPageState(error);
      },
      (data) {
        var newLatitude = data.results?.first.latitude ?? 0.0;
        var newLongitude = data.results?.first.longitude ?? 0.0;
        _fetchCityAndCountry(
            newLatitude: newLatitude, newLongitude: newLongitude);
        _fetchWeatherData();
      },
    );

    notifyListeners();
  }

  String _searchText = '';
  final TextEditingController searchController = TextEditingController();

  String get searchText => _searchText;
  void _setSearchText(String value) {
    _searchText = value;
    notifyListeners();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
