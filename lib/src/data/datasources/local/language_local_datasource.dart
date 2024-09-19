import 'package:get_storage/get_storage.dart';

abstract class LanguageLocalDataSource {
  void updateLanguage(String languageCode);
  String getLocalLanguage();
}

class LanguageLocalDataSourceImpl implements LanguageLocalDataSource {
  final GetStorage localStorage = GetStorage();

  @override
  String getLocalLanguage() {
    return localStorage.read('LANGUAGE_CODE') ?? 'en';
  }

  @override
  void updateLanguage(String languageCode) {
    localStorage.write('LANGUAGE_CODE', languageCode);
  }
}
