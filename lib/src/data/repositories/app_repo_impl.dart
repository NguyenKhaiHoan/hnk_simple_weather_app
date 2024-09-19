import 'package:hnk_simple_weather_app/src/data/datasources/local/language_local_datasource.dart';
import 'package:hnk_simple_weather_app/src/data/datasources/local/theme_local_datasource.dart';
import 'package:hnk_simple_weather_app/src/domain/repositories/app_repo.dart';

class AppRepositoryImpl implements AppRepository {
  final LanguageLocalDataSource _languageLocalDataSource;
  final ThemeLocalDataSource _themeLocalDataSource;
  AppRepositoryImpl(this._languageLocalDataSource, this._themeLocalDataSource);

  @override
  String getLocalLanguage() {
    return _languageLocalDataSource.getLocalLanguage();
  }

  @override
  void updateLanguage(String languageCode) {
    _languageLocalDataSource.updateLanguage(languageCode);
  }

  @override
  String getLocalTheme() {
    return _themeLocalDataSource.getLocalTheme();
  }

  @override
  void updateTheme(String themeName) {
    _themeLocalDataSource.updateTheme(themeName);
  }
}
