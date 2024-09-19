import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';
import 'package:hnk_simple_weather_app/src/core/enums/app_theme.dart';
import 'package:hnk_simple_weather_app/src/core/extensions/build_context.dart';
import 'package:hnk_simple_weather_app/src/di/dependency_injection.dart';
import 'package:hnk_simple_weather_app/src/presention/widgets/drawer/drawer_list_tile.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeSwitcher extends ConsumerWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var viewModel = ref.watch(drawerViewModelProvider);
    return DrawerListTile(
      isCollapse: viewModel.isCollapse,
      iconData: viewModel.theme == Themes.dark
          ? PhosphorIconsFill.moon
          : PhosphorIconsFill.sun,
      title: AppLocalizations.of(context)!.darkMode,
      index: 5,
      widget: Switch(
        activeColor: context.isDarkMode
            ? HAppColor.darkOtherBackground
            : HAppColor.lightBackground,
        activeTrackColor: HAppColor.gradientStart,
        inactiveThumbColor: context.isDarkMode
            ? HAppColor.darkOtherBackground
            : HAppColor.lightBackground,
        inactiveTrackColor: HAppColor.gradientStart,
        splashRadius: 50.0,
        value: viewModel.theme == Themes.dark,
        onChanged: (value) =>
            ref.read(drawerViewModelProvider.notifier).toggleTheme(),
      ),
    );
  }
}
