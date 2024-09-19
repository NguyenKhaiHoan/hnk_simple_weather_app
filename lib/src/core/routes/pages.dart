import 'package:flutter/material.dart';
import 'package:hnk_simple_weather_app/src/presention/views/home_view.dart';
import 'package:page_transition/page_transition.dart';

import '/src/core/error/error.dart';
import 'routes.dart';

class AppRoute {
  static const initial = RoutesName.initial;
  static Route<dynamic> generate(RouteSettings? settings) {
    switch (settings?.name) {
      case RoutesName.initial:
        return PageTransition(
            child: const HomeView(), type: PageTransitionType.fade);
      default:
        throw const RouteException('Route not found!');
    }
  }
}
