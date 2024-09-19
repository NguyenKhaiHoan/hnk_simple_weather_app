import 'package:flutter/material.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';
import 'package:hnk_simple_weather_app/src/core/utils/color_util.dart';

class DrawerListTile extends StatelessWidget {
  final bool isCollapse;
  final int index;
  final IconData iconData;
  final String title;
  final Widget? widget;

  const DrawerListTile({
    super.key,
    required this.isCollapse,
    required this.iconData,
    required this.title,
    this.widget,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: isCollapse ? 300 : 80,
      height: 50,
      child: Container(
        decoration: BoxDecoration(
            gradient: index == 0
                ? const LinearGradient(colors: [
                    HAppColor.gradientStart,
                    HAppColor.gradientMid,
                    HAppColor.gradientEnd,
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight)
                : const LinearGradient(
                    colors: [Colors.transparent, Colors.transparent]),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Expanded(
              child: Icon(
                iconData,
                color: ColorUtil.createSectionIconColor(context, index),
              ),
            ),
            if (isCollapse) const SizedBox(width: 10),
            if (isCollapse)
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: ColorUtil.createSectionTextColor(context, index),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                ),
              ),
            if (isCollapse) const Spacer(),
            if (isCollapse && widget != null)
              Expanded(
                flex: 1,
                child: widget ?? const Center(),
              ),
          ],
        ),
      ),
    );
  }
}
