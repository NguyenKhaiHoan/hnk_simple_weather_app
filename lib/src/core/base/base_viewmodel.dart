import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hnk_simple_weather_app/src/core/base/view_state.dart';
import 'package:hnk_simple_weather_app/src/core/network/exception_handler.dart';
import 'package:hnk_simple_weather_app/src/core/service/connection_service.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class BaseViewModel extends ChangeNotifier {
  StreamSubscription<InternetConnectionStatus>? _connectionSubscription;

  BaseViewModel() {
    initialize();
    listeningToConnection();
  }

  Future<void>? initialize() => null;

  void listeningToConnection() {
    _connectionSubscription =
        ConnectionService().connectionStatus.listen((status) {
      if (!isDisposed) {
        switch (status) {
          case InternetConnectionStatus.connected:
            updatePageState(const ViewState.idle());
            break;
          case InternetConnectionStatus.disconnected:
            updatePageState(const ViewState.lostConnection());
            break;
        }
      }
    });
  }

  bool isDisposed = false;

  ViewState _pageState = const ViewState.idle();
  ViewState get pageState => _pageState;

  void updatePageState(ViewState state) {
    if (isDisposed) return;
    _pageState = state;
    notifyListeners();
  }

  void showLoading() => updatePageState(const ViewState.loading());
  void resetPageState() => updatePageState(const ViewState.idle());
  void hideLoading() => resetPageState();
  void errorPageState(final ExceptionHandler e) =>
      updatePageState(ViewState.error(error: e));

  @override
  void dispose() {
    isDisposed = true;
    _connectionSubscription?.cancel();
    super.dispose();
  }
}
