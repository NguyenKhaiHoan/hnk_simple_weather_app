import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';
import 'package:hnk_simple_weather_app/src/di/dependency_injection.dart';
import 'package:hnk_simple_weather_app/src/presention/widgets/drawer/drawer_list_tile.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DrawerItems extends ConsumerWidget {
  const DrawerItems({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Map<IconData, String> mapSectionDrawer = {
      PhosphorIconsFill.house: AppLocalizations.of(context)!.home,
      PhosphorIconsFill.info: AppLocalizations.of(context)!.aboutApp,
      PhosphorIconsFill.star: AppLocalizations.of(context)!.rate,
      PhosphorIconsFill.dotsThreeCircle:
          AppLocalizations.of(context)!.otherApps,
      PhosphorIconsFill.translate: AppLocalizations.of(context)!.language,
    };
    var viewModel = ref.watch(drawerViewModelProvider);
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var drawerIconItem = mapSectionDrawer.keys.elementAt(index);
        var drawLabelItem = mapSectionDrawer.values.elementAt(index);

        if (index == mapSectionDrawer.length - 1) {
          return InkWell(
            onTap: () => ref.read(drawerViewModelProvider).localeChanged(),
            child: DrawerListTile(
              isCollapse: viewModel.isCollapse,
              iconData: drawerIconItem,
              title:
                  '$drawLabelItem: ${viewModel.locale.languageCode == 'en' ? "English" : "Tiếng Việt"}',
              index: index,
            ),
          );
        }
        return DrawerListTile(
          isCollapse: viewModel.isCollapse,
          iconData: drawerIconItem,
          title: drawLabelItem,
          index: index,
        );
      },
      separatorBuilder: (context, index) => gapH10,
      itemCount: mapSectionDrawer.length,
    );
  }
}
