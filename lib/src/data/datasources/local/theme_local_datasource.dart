import 'package:get_storage/get_storage.dart';

abstract class ThemeLocalDataSource {
  void updateTheme(String themeName);
  String getLocalTheme();
}

class ThemeLocalDataSourceImpl implements ThemeLocalDataSource {
  final GetStorage localStorage = GetStorage();

  @override
  String getLocalTheme() {
    return localStorage.read('THEME_NAME') ?? 'dark';
  }

  @override
  void updateTheme(String themeName) {
    localStorage.write('THEME_NAME', themeName);
  }
}
