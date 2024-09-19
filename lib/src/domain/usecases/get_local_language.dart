import 'package:hnk_simple_weather_app/src/core/usecases/usecases.dart';
import 'package:hnk_simple_weather_app/src/domain/repositories/app_repo.dart';

class GetLocalLanguageUseCase implements UseCaseLocal<String, void> {
  final AppRepository _appRepository;

  GetLocalLanguageUseCase(this._appRepository);

  @override
  String call({void params}) {
    return _appRepository.getLocalLanguage();
  }
}
