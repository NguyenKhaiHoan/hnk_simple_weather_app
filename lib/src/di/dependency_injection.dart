library dependency_injection;

import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hnk_simple_weather_app/src/core/service/geocoding_api_service.dart';
import 'package:hnk_simple_weather_app/src/core/service/location_service.dart';
import 'package:hnk_simple_weather_app/src/core/service/weather_api_service.dart';
import 'package:hnk_simple_weather_app/src/data/datasources/local/language_local_datasource.dart';
import 'package:hnk_simple_weather_app/src/data/datasources/local/theme_local_datasource.dart';
import 'package:hnk_simple_weather_app/src/data/datasources/remote/geocoding_remote_datasource.dart';
import 'package:hnk_simple_weather_app/src/data/datasources/remote/weather_remote_datasource.dart';
import 'package:hnk_simple_weather_app/src/data/repositories/app_repo_impl.dart';
import 'package:hnk_simple_weather_app/src/data/repositories/geocoding_repo_impl.dart';
import 'package:hnk_simple_weather_app/src/data/repositories/weather_repo_impl.dart';
import 'package:hnk_simple_weather_app/src/domain/repositories/app_repo.dart';
import 'package:hnk_simple_weather_app/src/domain/repositories/geocoding_repo.dart';
import 'package:hnk_simple_weather_app/src/domain/repositories/weather_repo.dart';
import 'package:hnk_simple_weather_app/src/domain/usecases/get_daily_weather.dart';
import 'package:hnk_simple_weather_app/src/domain/usecases/get_hourly_weather.dart';
import 'package:hnk_simple_weather_app/src/domain/usecases/get_local_language.dart';
import 'package:hnk_simple_weather_app/src/domain/usecases/get_local_theme.dart';
import 'package:hnk_simple_weather_app/src/domain/usecases/search_location.dart';
import 'package:hnk_simple_weather_app/src/domain/usecases/update_language.dart';
import 'package:hnk_simple_weather_app/src/domain/usecases/update_theme.dart';
import 'package:hnk_simple_weather_app/src/presention/viewmodels/drawer_viewmodel.dart';
import 'package:hnk_simple_weather_app/src/presention/viewmodels/home_viewmodel.dart';

// dio
final dioProvider = Provider<Dio>((ref) {
  Dio dio = Dio();
  dio.interceptors.add(AwesomeDioInterceptor());
  return dio;
});

// repository
final appRepositoryProvider = Provider<AppRepository>((ref) {
  final LanguageLocalDataSource languageLocalDataSource =
      LanguageLocalDataSourceImpl();
  final ThemeLocalDataSource themeLocalDataSource = ThemeLocalDataSourceImpl();
  final app = AppRepositoryImpl(languageLocalDataSource, themeLocalDataSource);
  return app;
});

final weatherRepositoryProvider = Provider<WeatherRepository>((ref) {
  final dio = ref.read(dioProvider);
  final WeatherApiService weatherApiService = WeatherApiService(dio);
  final WeatherRemoteDatasource weatherRemoteDataSource =
      WeatherRemoteDataSourceImpl(weatherApiService);
  return WeatherRepositoryImpl(weatherRemoteDataSource);
});

final geocodingRepositoryProvider = Provider<GeocodingRepository>((ref) {
  final dio = ref.read(dioProvider);
  final GeocodingApiService geocodingApiService = GeocodingApiService(dio);
  final GeocodingRemoteDatasource geocodingRemoteDataSource =
      GeocodingRemoteDatasourceImpl(geocodingApiService);
  return GeocodingRepositoryImpl(geocodingRemoteDataSource);
});

// useCase
final getLocalLanguageUseCaseProvider =
    Provider<GetLocalLanguageUseCase>((ref) {
  final repository = ref.read(appRepositoryProvider);
  return GetLocalLanguageUseCase(repository);
});

final getLocalThemeUseCaseProvider = Provider<GetLocalThemeUseCase>((ref) {
  final repository = ref.read(appRepositoryProvider);
  return GetLocalThemeUseCase(repository);
});

final updateLanguageUseCaseProvider = Provider<UpdateLanguageUseCase>((ref) {
  final repository = ref.read(appRepositoryProvider);
  return UpdateLanguageUseCase(repository);
});

final updateThemeUseCaseProvider = Provider<UpdateThemeUseCase>((ref) {
  final repository = ref.read(appRepositoryProvider);
  return UpdateThemeUseCase(repository);
});

final getDailyWeatherUseCaseProvider = Provider<GetDailyWeatherUseCase>((ref) {
  final repository = ref.read(weatherRepositoryProvider);
  return GetDailyWeatherUseCase(repository);
});

final getHourlyWeatherUseCaseProvider =
    Provider<GetHourlyWeatherUseCase>((ref) {
  final repository = ref.read(weatherRepositoryProvider);
  return GetHourlyWeatherUseCase(repository);
});

final searchLocationUseCaseProvider = Provider<SearchLocationUseCase>((ref) {
  final repository = ref.read(geocodingRepositoryProvider);
  return SearchLocationUseCase(repository);
});

// viewModel
final homeViewModelProvider = ChangeNotifierProvider<HomeViewModel>(
  (ref) {
    final getDailyWeatherUseCase = ref.read(getDailyWeatherUseCaseProvider);
    final getHourlyWeatherUseCase = ref.read(getHourlyWeatherUseCaseProvider);
    final searchLocationUseCase = ref.read(searchLocationUseCaseProvider);
    final locationService = LocationService();
    return HomeViewModel(
        getDailyWeatherUseCase: getDailyWeatherUseCase,
        getHourlyWeatherUseCase: getHourlyWeatherUseCase,
        locationService: locationService,
        searchLocationUseCase: searchLocationUseCase);
  },
);

final drawerViewModelProvider = ChangeNotifierProvider<DrawerViewModel>(
  (ref) {
    final updateLanguageUseCase = ref.read(updateLanguageUseCaseProvider);
    final updateThemeUseCase = ref.read(updateThemeUseCaseProvider);
    final getLocalLanguageUseCase = ref.read(getLocalLanguageUseCaseProvider);
    final getLocalThemeUseCase = ref.read(getLocalThemeUseCaseProvider);
    return DrawerViewModel(
        updateLanguageUseCase: updateLanguageUseCase,
        updateThemeUseCase: updateThemeUseCase,
        getLocalLanguageUseCase: getLocalLanguageUseCase,
        getLocalThemeUseCase: getLocalThemeUseCase);
  },
);
