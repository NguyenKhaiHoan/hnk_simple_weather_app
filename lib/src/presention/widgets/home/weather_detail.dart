import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';
import 'package:hnk_simple_weather_app/src/di/dependency_injection.dart';
import 'package:hnk_simple_weather_app/src/presention/widgets/home/weather_detail_item.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class WeatherDetailsWidget extends ConsumerWidget {
  const WeatherDetailsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: hAppDefaultPaddingTB,
      child: _builListWeatherDetail(context),
    );
  }

  Widget _builListWeatherDetail(BuildContext context) {
    var sizeItem =
        (MediaQuery.of(context).size.width - hAppDefaultPadding * 2 - 10 * 2) /
            3;
    return Consumer(
      builder: (context, ref, child) {
        var viewModel = ref.watch(homeViewModelProvider);
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            WeatherDetailsItemWidget(
                sizeItem: sizeItem,
                iconData: PhosphorIconsFill.wind,
                label: AppLocalizations.of(context)!.wind,
                value: viewModel.getCurrentWind()),
            WeatherDetailsItemWidget(
                sizeItem: sizeItem,
                iconData: PhosphorIconsFill.thermometer,
                label: AppLocalizations.of(context)!.pressure,
                value: viewModel.getCurrentPressure()),
            WeatherDetailsItemWidget(
                sizeItem: sizeItem,
                iconData: PhosphorIconsBold.drop,
                label: AppLocalizations.of(context)!.humidity,
                value: viewModel.getCurrentHumidity())
          ],
        );
      },
    );
  }
}
