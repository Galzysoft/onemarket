import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart' as mate;
import 'package:intl/intl.dart';
import 'package:one_market/pages/shop/createshop/view.dart';
import 'package:one_market/pages/shop/search_shops/view.dart';

import 'package:one_market/widgets/spacehieght.dart';
import 'package:one_market/widgets/spacewidth.dart';
import '../../constants/constants_and_imports.dart';
import '../../widgets/app_skelekton/view.dart';
import '../../widgets/users_header/view.dart';
import 'logic.dart';

class ShopPage extends StatelessWidget {
  final logic = Get.put(ShopLogic());
  final state = Get.find<ShopLogic>().state;

  List pages = [  CreateShopPage(),
    SearchShopsPage(),];
  @override
  Widget build(BuildContext context) {
    return AppSkeleton(
      pages: pages,
      tabsBarItems: [
        PaneItemSeparator(color: Colors.transparent),
        PaneItem(
          // selectedTileColor: ButtonState.all(colors.primary_color),
          icon: Image.asset(
            assets.create,
            // color: colors.primarywhite_color,
            height: 20,
          ),
          title: Text(
            "Create shop",
            style: FluentTheme.of(context).typography.display,
          ),
        ),
        PaneItemSeparator(color: Colors.transparent),
        PaneItem(
          // selectedTileColor: ButtonState.all(colors.primary_color),
            icon: Image.asset(
              assets.view,
              // color: colors.primarywhite_color,
              height: 20,
            ),
            title: Text(
              "View shops" + "      ",
              style: FluentTheme.of(context).typography.display,
            ),
            infoBadge: InfoBadge(
              color: Colors.green.withOpacity(0.6),
              source: Text(" ${NumberFormat.compactCurrency(
                decimalDigits: 2,
                symbol:
                '', // if you want to add currency symbol then pass that in this else leave it empty.
              ).format(2000588)}"),
            )),
        PaneItemSeparator(color: Colors.transparent),
      ],
    );
  }
}
