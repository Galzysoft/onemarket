import 'package:flutter/material.dart' as mate;
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:one_market/pages/members/all_members/view.dart';
import 'package:one_market/pages/members/create_member/view.dart';
import 'package:one_market/widgets/app_skelekton/view.dart';
import 'package:one_market/widgets/spacewidth.dart';

import '../../constants/constants_and_imports.dart';
import '../../widgets/default_combo_box/view.dart';
import '../../widgets/default_date_picker/view.dart';
import '../../widgets/default_text_field/view.dart';
import '../../widgets/space.dart';
import '../../widgets/users_header/view.dart';
import 'logic.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart' as Acrylics;

class MembersPage extends StatefulWidget {
  @override
  mate.State<MembersPage> createState() => _MembersPageState();
}

class _MembersPageState extends mate.State<MembersPage> {
  var logic = Get.put(MembersLogic());
  final state = Get
      .find<MembersLogic>()
      .state;
  List pages = [ CreateMember(),
    AllMembersPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return AppSkeleton(selectedidex: logic.selectedidex.value,
        onChanged: (value ) {logic.selectedidex.value=value;  },
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
              "Create member",
              style: FluentTheme
                  .of(context)
                  .typography
                  .display,
            ), body: pages[0],
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
                "View members" + "      ",
                style: FluentTheme
                    .of(context)
                    .typography
                    .display,
              ),
              infoBadge: InfoBadge(
                color: Colors.green.withOpacity(0.6),
                source: Text(" ${NumberFormat.compactCurrency(
                  decimalDigits: 2,
                  symbol:
                  '', // if you want to add currency symbol then pass that in this else leave it empty.
                ).format(2000588)}"),
              ), body: pages[1]),
          PaneItemSeparator(color: Colors.transparent),
        ],
      );
    });
  }
}

