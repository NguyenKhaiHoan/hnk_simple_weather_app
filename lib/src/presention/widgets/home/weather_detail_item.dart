import 'package:flutter/material.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';
import 'package:hnk_simple_weather_app/src/core/extensions/build_context.dart';

class WeatherDetailsItemWidget extends StatelessWidget {
  const WeatherDetailsItemWidget({
    super.key,
    required this.sizeItem,
    required this.iconData,
    required this.label,
    required this.value,
  });

  final double sizeItem;
  final IconData iconData;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeItem,
      width: sizeItem,
      constraints: const BoxConstraints(
        minWidth: 0,
        minHeight: 0,
      ),
      decoration: BoxDecoration(
        color: context.isDarkMode
            ? HAppColor.darkOtherBackground
            : HAppColor.lightBackground,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: HAppColor.dark.withOpacity(0.09),
            spreadRadius: 3,
            blurRadius: 3,
            offset: const Offset(3, 4),
          ),
        ],
      ),
      child: Padding(
        padding: hAppDefaultPaddingLTRB,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color:
                  context.isDarkMode ? HAppColor.darkIcon : HAppColor.lightIcon,
            ),
            gapH8,
            Text(
              label,
              style: HAppStyle.heading5(context),
            ),
            Text(value, style: HAppStyle.paragraph2Regular(context)),
          ],
        ),
      ),
    );
  }
}
