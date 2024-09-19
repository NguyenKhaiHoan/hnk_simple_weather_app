// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hnk_simple_weather_app/src/core/base/base_viewmodel.dart';
import 'package:hnk_simple_weather_app/src/core/enums/app_theme.dart';
import 'package:hnk_simple_weather_app/src/domain/usecases/get_local_language.dart';
import 'package:hnk_simple_weather_app/src/domain/usecases/update_language.dart';
import 'package:hnk_simple_weather_app/src/domain/usecases/update_theme.dart';

import '../../domain/usecases/get_local_theme.dart';

class DrawerViewModel extends BaseViewModel {
  DrawerViewModel({
    required UpdateLanguageUseCase updateLanguageUseCase,
    required UpdateThemeUseCase updateThemeUseCase,
    required GetLocalLanguageUseCase getLocalLanguageUseCase,
    required GetLocalThemeUseCase getLocalThemeUseCase,
  })  : _updateLanguageUseCase = updateLanguageUseCase,
        _updateThemeUseCase = updateThemeUseCase,
        _getLocalLanguageUseCase = getLocalLanguageUseCase,
        _getLocalThemeUseCase = getLocalThemeUseCase;

  final UpdateLanguageUseCase _updateLanguageUseCase;
  final UpdateThemeUseCase _updateThemeUseCase;
  final GetLocalLanguageUseCase _getLocalLanguageUseCase;
  final GetLocalThemeUseCase _getLocalThemeUseCase;

  Locale _locale = const Locale('en');
  Themes _theme = Themes.light;
  bool _isCollapse = false;
  bool _isOpen = false;

  Locale get locale => _locale;
  Themes get theme => _theme;
  bool get isCollapse => _isCollapse;
  bool get isOpen => _isOpen;

  @override
  Future<void> initialize() async {
    final localLocaleCode = _getLocalLanguageUseCase.call();
    setLocale(Locale(localLocaleCode));
    final localTheme = _getLocalThemeUseCase.call();
    setTheme(localTheme == 'dark' ? Themes.dark : Themes.light);
  }

  void setLocale(Locale newLocale) {
    if (_locale != newLocale) {
      _locale = newLocale;
    }
  }

  void setTheme(Themes newTheme) {
    if (_theme != newTheme) {
      _theme = newTheme;
    }
  }

  void localeChanged() {
    final newCode = locale.languageCode == 'en' ? 'vn' : 'en';
    _updateLanguageUseCase.call(params: newCode);
    setLocale(Locale(newCode));
  }

  void toggleTheme() {
    final newTheme = _theme == Themes.dark ? Themes.light : Themes.dark;
    _updateThemeUseCase.call(
        params: newTheme == Themes.dark ? 'dark' : 'light');
    setTheme(newTheme);
  }

  void toggleCollapse() {
    if (_isCollapse && _isOpen) {
      _isCollapse = false;
      _isOpen = false;
    } else {
      _isCollapse = !_isCollapse;
    }
  }

  void toggleOpen() {
    _isOpen = !_isOpen;
  }
}
