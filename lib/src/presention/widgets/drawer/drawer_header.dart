import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';
import 'package:hnk_simple_weather_app/src/core/extensions/build_context.dart';
import 'package:hnk_simple_weather_app/src/core/widgets/animated_text_field.dart';
import 'package:hnk_simple_weather_app/src/di/dependency_injection.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class DrawerHeaders extends ConsumerWidget {
  final bool isCollapse;

  const DrawerHeaders({
    super.key,
    required this.isCollapse,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var drawerViewModel = ref.watch(drawerViewModelProvider);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: 60,
      width: double.infinity,
      child: drawerViewModel.isOpen
          ? const Row(
              children: [
                Expanded(flex: 1, child: AnimatedSearchTextField()),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!isCollapse) const FlutterLogo(size: 30),
                if (isCollapse)
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Weather App',
                      style: HAppStyle.heading3(context),
                      maxLines: 1,
                    ),
                  ),
                if (isCollapse) const Spacer(),
                if (isCollapse)
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {
                        ref.read(drawerViewModelProvider).toggleOpen();
                      },
                      icon: Icon(
                        PhosphorIconsBold.magnifyingGlass,
                        color: context.isDarkMode
                            ? HAppColor.darkIcon
                            : HAppColor.lightIcon,
                      ),
                    ),
                  ),
              ],
            ),
    );
  }
}
