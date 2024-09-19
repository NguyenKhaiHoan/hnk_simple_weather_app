enum Weather {
  clearSky,
  partlyCloud,
  fog,
  drizzle,
  freezingDrizzle,
  rain,
  freezingRain,
  snowFall,
  snowGrains,
  rainShowers,
  snowShowers,
  thunderstorm,
  unknown;

  static Weather getWeatherFromCode(int weatherCode) {
    switch (weatherCode) {
      case 0:
        return Weather.clearSky;
      case 1:
      case 2:
      case 3:
        return Weather.partlyCloud;
      case 45:
      case 48:
        return Weather.fog;
      case 51:
      case 53:
      case 55:
        return Weather.drizzle;
      case 56:
      case 57:
        return Weather.freezingDrizzle;
      case 61:
      case 63:
      case 65:
        return Weather.rain;
      case 66:
      case 67:
        return Weather.freezingRain;
      case 71:
      case 73:
      case 75:
        return Weather.snowFall;
      case 77:
        return Weather.snowGrains;
      case 80:
      case 81:
      case 82:
        return Weather.rainShowers;
      case 85:
      case 86:
        return Weather.snowShowers;
      case 95:
      case 96:
      case 99:
        return Weather.thunderstorm;
      default:
        return Weather.unknown;
    }
  }
}
