import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';
import 'package:hnk_simple_weather_app/src/di/dependency_injection.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class HeaderWidget extends ConsumerWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(child: HeaderLocationWidget()),
        gapW24,
        _buildHeaderMenuIcon(context)
      ],
    );
  }

  Widget _buildHeaderMenuIcon(BuildContext context) {
    return InkWell(
      onTap: () {
        Scaffold.of(context).openDrawer();
      },
      child: const Icon(
        Icons.menu,
        color: HAppColor.darkIcon,
      ),
    );
  }
}

class HeaderLocationWidget extends ConsumerWidget {
  const HeaderLocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        const Icon(
          PhosphorIconsFill.mapPin,
          color: HAppColor.darkIcon,
        ),
        gapW4,
        Flexible(child: Consumer(
          builder: (context, ref, child) {
            final viewModel = ref.watch(homeViewModelProvider);
            return Text(
              '${viewModel.city}, ${viewModel.country}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: HAppStyle.label1Bold(context)
                  .copyWith(color: HAppColor.darkPrimaryText),
            );
          },
        ))
      ],
    );
  }
}
