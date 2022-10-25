import 'package:flutter/material.dart' as mate;
import 'package:one_market/constants/constants_and_imports.dart';
import 'package:get/get.dart';

import 'logic.dart';

class UsersHeaderPage extends StatelessWidget {
  final logic = Get.put(UsersHeaderLogic());
  final state = Get.find<UsersHeaderLogic>().state;
  final bool? backbutton;

  UsersHeaderPage({super.key, this.backbutton});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              Expanded(child: SizedBox()),
              SizedBox(
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
                              style: FluentTheme.of(context).typography.title),
                          Text("admin",
                              overflow: TextOverflow.ellipsis,
                              style:
                                  FluentTheme.of(context).typography.subtitle),
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
            ],
          ),
        ));
  }
}
