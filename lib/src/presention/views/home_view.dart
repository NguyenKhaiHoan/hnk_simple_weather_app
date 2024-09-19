import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hnk_simple_weather_app/gen/assets.gen.dart';
import 'package:hnk_simple_weather_app/src/core/base/base_view.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';
import 'package:hnk_simple_weather_app/src/core/extensions/build_context.dart';
import 'package:hnk_simple_weather_app/src/core/widgets/loading_location.dart';
import 'package:hnk_simple_weather_app/src/di/dependency_injection.dart';
import 'package:hnk_simple_weather_app/src/presention/viewmodels/home_viewmodel.dart';
import 'package:hnk_simple_weather_app/src/presention/widgets/drawer/collapsed_drawer.dart';
import 'package:hnk_simple_weather_app/src/presention/widgets/home/extended_forecast.dart';
import 'package:hnk_simple_weather_app/src/presention/widgets/home/weather_detail.dart';
import 'package:hnk_simple_weather_app/src/presention/widgets/home/weather_overview.dart';

class HomeView extends BaseView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Future<void>? initStateView(WidgetRef ref) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(homeViewModelProvider).initializeHomeView();
    });
    return null;
  }

  @override
  Widget? drawer() {
    return const DrawerView();
  }

  @override
  Widget body(BuildContext context, WidgetRef ref) {
    final screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      padding: hAppDefaultPaddingLTR,
      child: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.55,
            child: const WeatherOverviewWidget(),
          ),
          const WeatherDetailsWidget(),
          const ExtendedForecastWidget(),
        ],
      ),
    );
  }

  @override
  Color pageBackgroundColor(BuildContext context) {
    return context.isDarkMode
        ? HAppColor.darkBackground
        : HAppColor.lightBackground;
  }

  @override
  Widget customLoading(BuildContext context) {
    return AnimationLottieWidget(
      backgroundColor: pageBackgroundColor(context),
      pathLottie: Assets.animations.loadingLocation,
      description: AppLocalizations.of(context)!.retrievingLocationData,
    );
  }

  @override
  ChangeNotifierProvider<HomeViewModel> get viewModelProvider =>
      homeViewModelProvider;
}
