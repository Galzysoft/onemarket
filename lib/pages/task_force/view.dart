import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:one_market/constants/constants_and_imports.dart';
import 'package:flutter/material.dart' as mate;
import 'package:one_market/pages/task_force/all_task_force/view.dart';
import 'package:one_market/widgets/default_combo_box/view.dart';
import 'package:one_market/widgets/default_date_picker/view.dart';
import 'package:one_market/widgets/default_text_field/view.dart';
import 'package:one_market/widgets/space.dart';
import 'package:one_market/widgets/spacewidth.dart';
import 'package:one_market/widgets/users_header/view.dart';
import '../../widgets/app_skelekton/view.dart';
import 'cretae_task_force/view.dart';
import 'logic.dart';

class TaskForcePage extends StatelessWidget {
  final logic = Get.put(TaskForceLogic());
  final logic2 = Get.put(AllTaskForcePage());
  final state = Get.find<TaskForceLogic>().state;
  List pages = [  CretaeTaskForcePage(),
    AllTaskForcePage(),];
  @override
  Widget build(BuildContext context) {
    return AppSkeleton(
      onChanged: (value ) { },
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
            "Create Task Force",
            style: FluentTheme.of(context).typography.display,
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
              "View All Task Forces" + "      ",
              style: FluentTheme.of(context).typography.display,
            ),
            infoBadge: InfoBadge(
              color: Colors.green.withOpacity(0.6),
              source: Text(" ${NumberFormat.compactCurrency(
                decimalDigits: 2,
                symbol:
                '', // if you want to add currency symbol then pass that in this else leave it empty.
              ).format(2000588)}"),
            ), body:pages[1]),
        PaneItemSeparator(color: Colors.transparent),
      ], selectedidex: 0,
    );
  }
}

