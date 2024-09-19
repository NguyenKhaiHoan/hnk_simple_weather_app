import 'package:flutter/material.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';
import 'package:hnk_simple_weather_app/src/core/extensions/build_context.dart';

class DrawerContainer extends StatelessWidget {
  final bool isCollapse;
  final List<Widget> children;

  const DrawerContainer({
    super.key,
    required this.isCollapse,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeInOutCubic,
      duration: const Duration(milliseconds: 500),
      width: isCollapse ? 300 : 70,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: context.isDarkMode
            ? HAppColor.darkOtherBackground
            : HAppColor.lightBackground,
      ),
      child: Padding(
        padding: hAppDefaultPaddingLTRB,
        child: Column(
          children: children,
        ),
      ),
    );
  }
}
