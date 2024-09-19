import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hnk_simple_weather_app/src/core/network/exception_handler.dart';

part 'view_state.freezed.dart';

@freezed
class ViewState with _$ViewState {
  const factory ViewState.idle() = Idle;
  const factory ViewState.loading() = Loading;
  const factory ViewState.lostConnection() = LostConnection;
  const factory ViewState.error({required ExceptionHandler error}) = Error;
}
