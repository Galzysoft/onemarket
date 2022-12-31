import 'package:get/get.dart';
import 'package:one_market/constants/constants_and_imports.dart';
import 'package:flutter/material.dart' as mate;
import 'package:one_market/widgets/space.dart';
import 'package:one_market/widgets/spacewidth.dart';
import 'package:one_market/widgets/users_header/view.dart';
import '../../../widgets/tool_bar/widget/toolBarItem.dart';
import 'logic.dart';

class AllTaskForcePage extends StatelessWidget {
  final logic = Get.put(AllTaskForceLogic());
  final state = Get.find<AllTaskForceLogic>().state;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: UsersHeaderPage(
          toolBarItems: [
            ToolBarItem(onPressed: () {}, label: "Print", icon: assets.print),
            ToolBarItem(onPressed: () {}, label: "Clear", icon: assets.clear)
          ],
          centerWidget: SizedBox(height: 100,
            child: TextFormBox(
              controller: logic.controller,
              style: FluentTheme.of(context).typography.caption!.copyWith(
                  color: FluentTheme.of(context).micaBackgroundColor),
              placeholder: "Search for Tax Force",
              prefix: mate.Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(assets.search, height: 32),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: FluentTheme.of(context).micaBackgroundColor.withOpacity(0.2),
              ),
            ),
          ),
          title: "All Tax Forces"),
      content: mate.Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: mate.Column(
          children: [
            SpaceHeight(10),
            Expanded(
              child: mate.Container(
                width: Get.width,
                height: Get.height,
                child: Table(
                  // defaultColumnWidth: FixedColumnWidth(120.0),
                  children: [
                    TableRow(
                        decoration: BoxDecoration(
                            color: FluentTheme.of(context).inactiveColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                            )),
                        children: [
                          mate.SizedBox(
                            height: 50,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '     TASKFORCE',
                                    style: FluentTheme.of(context)
                                        .typography
                                        .display,
                                  )
                                ]),
                          ),
                          mate.SizedBox(
                            height: 50,
                          ),
                          mate.SizedBox(
                            height: 50,
                          ),
                          mate.SizedBox(
                            height: 50,
                          ),
                        ]),
                    TableRow(
                        decoration: BoxDecoration(
                          color: FluentTheme.of(context).micaBackgroundColor,
                          border: Border.symmetric(
                              horizontal: BorderSide(
                                  color:
                                  FluentTheme.of(context).accentColor)),
                        ),
                        children: [
                          mate.SizedBox(
                            height: 60,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                        backgroundImage:
                                        AssetImage(assets.user)),
                                    title: Text(
                                      'Emma Obinna',
                                      style: FluentTheme.of(context)
                                          .typography
                                          .display,
                                    ),
                                    subtitle: Text(
                                      'example@gmail.com',
                                      style: FluentTheme.of(context)
                                          .typography
                                          .display!
                                          .copyWith(
                                          color: Colors.white
                                              .withOpacity(0.8),
                                          fontWeight: FontWeight.w100),
                                    ),
                                  )
                                ]),
                          ),
                          mate.SizedBox(
                            height: 60,
                          ),
                          mate.SizedBox(
                            height: 60,
                          ),
                          mate.SizedBox(
                              height: 60,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 30,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 60, right: 60),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(5),
                                            color: FluentTheme.of(context)
                                                .accentColor),
                                        child: mate.InkWell(
                                          onTap: () {},
                                          child: Center(
                                              child: Text(
                                                "VIEW",
                                                style: FluentTheme.of(context)
                                                    .typography
                                                    .display,
                                              )),
                                        ),
                                      ),
                                    )
                                  ])),
                        ]),
                    TableRow(
                        decoration: BoxDecoration(
                          color: FluentTheme.of(context).micaBackgroundColor,
                          border: Border.symmetric(
                              horizontal: BorderSide(
                                  color:
                                  FluentTheme.of(context).accentColor)),
                        ),
                        children: [
                          mate.SizedBox(
                            height: 60,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                        backgroundImage:
                                        AssetImage(assets.user)),
                                    title: Text(
                                      'Emma Obinna',
                                      style: FluentTheme.of(context)
                                          .typography
                                          .display,
                                    ),
                                    subtitle: Text(
                                      'example@gmail.com',
                                      style: FluentTheme.of(context)
                                          .typography
                                          .display!
                                          .copyWith(
                                          color: Colors.white
                                              .withOpacity(0.8),
                                          fontWeight: FontWeight.w100),
                                    ),
                                  )
                                ]),
                          ),
                          mate.SizedBox(
                            height: 60,
                          ),
                          mate.SizedBox(
                            height: 60,
                          ),
                          mate.SizedBox(
                              height: 60,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 30,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 60, right: 60),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(5),
                                            color: FluentTheme.of(context)
                                                .accentColor),
                                        child: mate.InkWell(
                                          onTap: () {},
                                          child: Center(
                                              child: Text(
                                                "VIEW",
                                                style: FluentTheme.of(context)
                                                    .typography
                                                    .display,
                                              )),
                                        ),
                                      ),
                                    )
                                  ])),
                        ]),
                    TableRow(
                        decoration: BoxDecoration(
                          color: FluentTheme.of(context).micaBackgroundColor,
                          border: Border.symmetric(
                              horizontal: BorderSide(
                                  color:
                                  FluentTheme.of(context).accentColor)),
                        ),
                        children: [
                          mate.SizedBox(
                            height: 60,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                        backgroundImage:
                                        AssetImage(assets.user)),
                                    title: Text(
                                      'Emma Obinna',
                                      style: FluentTheme.of(context)
                                          .typography
                                          .display,
                                    ),
                                    subtitle: Text(
                                      'example@gmail.com',
                                      style: FluentTheme.of(context)
                                          .typography
                                          .display!
                                          .copyWith(
                                          color: Colors.white
                                              .withOpacity(0.8),
                                          fontWeight: FontWeight.w100),
                                    ),
                                  )
                                ]),
                          ),
                          mate.SizedBox(
                            height: 60,
                          ),
                          mate.SizedBox(
                            height: 60,
                          ),
                          mate.SizedBox(
                              height: 60,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 30,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 60, right: 60),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(5),
                                            color: FluentTheme.of(context)
                                                .accentColor),
                                        child: mate.InkWell(
                                          onTap: () {},
                                          child: Center(
                                              child: Text(
                                                "VIEW",
                                                style: FluentTheme.of(context)
                                                    .typography
                                                    .display,
                                              )),
                                        ),
                                      ),
                                    )
                                  ])),
                        ]),
                    TableRow(
                        decoration: BoxDecoration(
                          color: FluentTheme.of(context).micaBackgroundColor,
                          border: Border.symmetric(
                              horizontal: BorderSide(
                                  color:
                                  FluentTheme.of(context).accentColor)),
                        ),
                        children: [
                          mate.SizedBox(
                            height: 60,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                        backgroundImage:
                                        AssetImage(assets.user)),
                                    title: Text(
                                      'Emma Obinna',
                                      style: FluentTheme.of(context)
                                          .typography
                                          .display,
                                    ),
                                    subtitle: Text(
                                      'example@gmail.com',
                                      style: FluentTheme.of(context)
                                          .typography
                                          .display!
                                          .copyWith(
                                          color: Colors.white
                                              .withOpacity(0.8),
                                          fontWeight: FontWeight.w100),
                                    ),
                                  )
                                ]),
                          ),
                          mate.SizedBox(
                            height: 60,
                          ),
                          mate.SizedBox(
                            height: 60,
                          ),
                          mate.SizedBox(
                              height: 60,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 30,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 60, right: 60),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(5),
                                            color: FluentTheme.of(context)
                                                .accentColor),
                                        child: mate.InkWell(
                                          onTap: () {},
                                          child: Center(
                                              child: Text(
                                                "VIEW",
                                                style: FluentTheme.of(context)
                                                    .typography
                                                    .display,
                                              )),
                                        ),
                                      ),
                                    )
                                  ])),
                        ]),
                    TableRow(
                        decoration: BoxDecoration(
                          color: FluentTheme.of(context).micaBackgroundColor,
                          border: Border.symmetric(
                              horizontal: BorderSide(
                                  color:
                                  FluentTheme.of(context).accentColor)),
                        ),
                        children: [
                          mate.SizedBox(
                            height: 60,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                        backgroundImage:
                                        AssetImage(assets.user)),
                                    title: Text(
                                      'Emma Obinna',
                                      style: FluentTheme.of(context)
                                          .typography
                                          .display,
                                    ),
                                    subtitle: Text(
                                      'example@gmail.com',
                                      style: FluentTheme.of(context)
                                          .typography
                                          .display!
                                          .copyWith(
                                          color: Colors.white
                                              .withOpacity(0.8),
                                          fontWeight: FontWeight.w100),
                                    ),
                                  )
                                ]),
                          ),
                          mate.SizedBox(
                            height: 60,
                          ),
                          mate.SizedBox(
                            height: 60,
                          ),
                          mate.SizedBox(
                              height: 60,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 30,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 60, right: 60),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(5),
                                            color: FluentTheme.of(context)
                                                .accentColor),
                                        child: mate.InkWell(
                                          onTap: () {},
                                          child: Center(
                                              child: Text(
                                                "VIEW",
                                                style: FluentTheme.of(context)
                                                    .typography
                                                    .display,
                                              )),
                                        ),
                                      ),
                                    )
                                  ])),
                        ]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
