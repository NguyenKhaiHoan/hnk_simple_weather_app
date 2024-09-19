import 'package:hnk_simple_weather_app/src/domain/entities/responses/language_entity.dart';

class HAppLanguage {
  const HAppLanguage._();

  static const languages = [
    LanguageEntity(code: 'en', value: 'English'),
    LanguageEntity(code: 'vi', value: 'Tiếng Việt')
  ];
}
