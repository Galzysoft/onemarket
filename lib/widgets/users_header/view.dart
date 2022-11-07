import 'package:flutter/material.dart' as mate;
import 'package:one_market/constants/constants_and_imports.dart';
import 'package:get/get.dart';
import 'package:one_market/widgets/tool_bar/view.dart';
import 'package:one_market/widgets/tool_bar/widget/toolBarItem.dart';

import 'logic.dart';

class UsersHeaderPage extends StatelessWidget {
  final logic = Get.put(UsersHeaderLogic());
  final state = Get.find<UsersHeaderLogic>().state;
  final bool? backbutton;

  final Widget? centerWidget;
  String? title;
  final List<CommandBarItem>? toolBarItems;

  UsersHeaderPage(
      {super.key,
      this.backbutton,

      this.title,
      this.toolBarItems,
      this.centerWidget});

  @override
  Widget build(BuildContext context) {
    title = title ?? "";
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        children: [
          toolBarItems != null
              ? ToolBar(
                  toolBarItems: toolBarItems!,
                )
              : SizedBox(),
          SizedBox(
              height: 70,
              child: Card(
                child: Row(
                  children: [
                    backbutton == true
                        ? Tooltip(
                            message: "Back",
                            style: TooltipThemeData(
                                textStyle: TextStyle(color: Colors.white)),
                            child: SizedBox(
                                height: 50,
                                child: Card(
                                    backgroundColor:
                                        FluentTheme.of(context).cardColor,
                                    child: mate.InkWell(
                                      child: Icon(
                                        FluentIcons.back,
                                        color: FluentTheme.of(context)
                                            .micaBackgroundColor,
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ))),
                          )
                        : SizedBox(),
                    Expanded(
                      child: Text(title!,
                          style: FluentTheme.of(context).typography.bodyLarge),
                    ),
                    Expanded(
                        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        centerWidget == null ? SizedBox() : Expanded(child: centerWidget!),
                      ],
                    )),
                    Expanded(
                      child: SizedBox(
                        width: 300,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("mr sam ijoku",
                                      overflow: TextOverflow.ellipsis,
                                      style: FluentTheme.of(context)
                                          .typography
                                          .title),
                                  Text("admin",
                                      overflow: TextOverflow.ellipsis,
                                      style: FluentTheme.of(context)
                                          .typography
                                          .subtitle),
                                ],
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    assets.user,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
