import 'dart:async';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class ConnectionService {
  static final ConnectionService _instance = ConnectionService._();
  factory ConnectionService() => _instance;
  ConnectionService._() {
    _initConnectionListener();
  }

  late StreamSubscription<InternetConnectionStatus> _connectionListener;

  final _connectionStatusController =
      StreamController<InternetConnectionStatus>.broadcast();
  Stream<InternetConnectionStatus> get connectionStatus =>
      _connectionStatusController.stream;

  void _initConnectionListener() {
    _connectionListener =
        InternetConnectionChecker().onStatusChange.listen((status) {
      _connectionStatusController.add(status);
    });
  }

  void dispose() {
    _connectionListener.cancel();
    _connectionStatusController.close();
  }
}
