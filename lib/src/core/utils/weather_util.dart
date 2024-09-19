import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hnk_simple_weather_app/src/core/enums/weather_code.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class WeatherUtil {
  const WeatherUtil._();

  static IconData getWeatherIcon(Weather weather) {
    switch (weather) {
      case Weather.clearSky:
        return PhosphorIconsFill.sun;
      case Weather.partlyCloud:
        return PhosphorIconsFill.cloudSun;
      case Weather.fog:
        return PhosphorIconsFill.cloudFog;
      case Weather.drizzle:
      case Weather.freezingDrizzle:
      case Weather.rain:
      case Weather.freezingRain:
      case Weather.rainShowers:
        return PhosphorIconsFill.cloudRain;
      case Weather.snowFall:
      case Weather.snowGrains:
      case Weather.snowShowers:
        return PhosphorIconsFill.cloudSnow;
      case Weather.thunderstorm:
        return PhosphorIconsFill.cloudLightning;
      default:
        return PhosphorIconsFill.sun;
    }
  }

  static String getWeatherDescription(Weather weather, BuildContext context) {
    switch (weather) {
      case Weather.clearSky:
        return AppLocalizations.of(context)!.weatherClearSky;
      case Weather.partlyCloud:
        return AppLocalizations.of(context)!.weatherPartlyCloud;
      case Weather.fog:
        return AppLocalizations.of(context)!.weatherFog;
      case Weather.drizzle:
        return AppLocalizations.of(context)!.weatherDrizzle;
      case Weather.freezingDrizzle:
        return AppLocalizations.of(context)!.weatherFreezingDrizzle;
      case Weather.rain:
        return AppLocalizations.of(context)!.weatherRain;
      case Weather.freezingRain:
        return AppLocalizations.of(context)!.weatherFreezingRain;
      case Weather.rainShowers:
        return AppLocalizations.of(context)!.weatherRainShowers;
      case Weather.snowFall:
        return AppLocalizations.of(context)!.weatherSnowFall;
      case Weather.snowGrains:
        return AppLocalizations.of(context)!.weatherSnowGrains;
      case Weather.snowShowers:
        return AppLocalizations.of(context)!.weatherSnowShowers;
      case Weather.thunderstorm:
        return AppLocalizations.of(context)!.weatherThunderstorm;
      default:
        return AppLocalizations.of(context)!.weatherUnknown;
    }
  }
}
