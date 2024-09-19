import 'package:hnk_simple_weather_app/src/core/usecases/usecases.dart';
import 'package:hnk_simple_weather_app/src/domain/repositories/app_repo.dart';

class UpdateLanguageUseCase implements UseCaseLocal<void, String> {
  final AppRepository _appRepository;

  UpdateLanguageUseCase(this._appRepository);

  @override
  void call({String? params}) {
    return _appRepository.updateLanguage(params!);
  }
}
