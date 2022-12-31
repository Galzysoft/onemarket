import 'dart:io';

import 'package:get/get.dart';
import 'package:flutter/material.dart' as mate;
import 'package:one_market/pages/members/logic.dart';
import 'package:one_market/pages/navigation/logic.dart';
import 'package:one_market/pages/shop/search_shops/widget/searchCard.dart';
import 'package:one_market/widgets/add_image/logic.dart';
import 'package:one_market/widgets/default_dialog_body/view.dart';
import 'package:one_market/widgets/select_members/view.dart';
import 'package:one_market/widgets/select_shops/view.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';
import '../../../constants/constants_and_imports.dart';
import '../../../widgets/default_combo_box/view.dart';
import '../../../widgets/default_date_picker/view.dart';
import '../../../widgets/default_text_field/view.dart';
import '../../../widgets/space.dart';
import '../../../widgets/spacewidth.dart';
import '../../../widgets/tool_bar/widget/toolBarItem.dart';
import '../../../widgets/users_header/view.dart';
import 'logic.dart';

class SearchShopsPage extends StatelessWidget {
  final logic = Get.put(SearchShopsLogic());
  final state = Get.find<SearchShopsLogic>().state;

  List<PlutoMenuItem> getMenus(BuildContext context) {
    return [
      PlutoMenuItem(
        title: '',
        icon: FluentIcons.more_vertical,
        children: [
          PlutoMenuItem(title: 'Owner', icon: mate.Icons.person_sharp,
              // onTap: () => message(context, 'Menu 1-1 tap'),
              children: [
                PlutoMenuItem(
                  title: 'Assign Owner',
                  icon: mate.Icons.person_pin,
                  // onTap: () => message(context, 'Menu 1-1 tap'),
                ),
                PlutoMenuItem(
                  title: 'Remove Owner',
                  icon: mate.Icons.person_add_disabled,
                  // onTap: () => message(context, 'Menu 1-1 tap'),
                ),
                PlutoMenuItem(
                  title: 'Update Owner',
                  icon: mate.Icons.person_add_alt_outlined,
                  // onTap: () => message(context, 'Menu 1-1 tap'),
                ),
              ]),
          PlutoMenuItem.divider(height: 10, color: Colors.white),
          PlutoMenuItem(title: 'Shop', icon: mate.Icons.delete_forever_outlined,
              // onTap: () => message(context, 'Menu 1-1 tap'),
              children: [
                PlutoMenuItem(
                  title: 'Update Shop',
                  icon: mate.Icons.update,
                  // onTap: () => message(context, 'Menu 1-1 tap'),
                ),
                PlutoMenuItem(
                  title: 'Delete Shop',
                  icon: mate.Icons.delete_forever_outlined,
                  // onTap: () => message(context, 'Menu 1-1 tap'),
                ),
              ]),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    print(Get.width);
    return ScaffoldPage(
      header: UsersHeaderPage(
          centerWidget: SizedBox(
            height: 100,
            child: TextFormBox(
              controller: logic.controller,
              style: FluentTheme.of(context)
                  .typography
                  .caption!
                  .copyWith(color: Colors.white),
              placeholder: "Search for Shops",
              placeholderStyle: FluentTheme.of(context)
                  .typography
                  .caption!
                  .copyWith(color: Colors.white),
              prefix: mate.Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Image.asset(assets.search, color: Colors.white, height: 32),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: FluentTheme.of(context).inactiveColor,
              ),
            ),
          ),
          toolBarItems: [
            ToolBarItem(onPressed: () {}, label: "Print", icon: assets.print),
            ToolBarItem(onPressed: () {}, label: "Clear", icon: assets.clear)
          ],
          title: "View Shop Information"),
      content: mate.Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: mate.Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(top: 10, bottom: 100),
                children: [
                  Column(children: [
                    SizedBox(
                      width: double.infinity,
                      child: Table(
                        // defaultColumnWidth: FixedColumnWidth(120.0),
                        children: [
                              TableRow(
                                  decoration: BoxDecoration(
                                      color:
                                          FluentTheme.of(context).inactiveColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                      )),
                                  children: [
                                    mate.SizedBox(
                                      height: 50,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Shop',
                                              style: FluentTheme.of(context)
                                                  .typography
                                                  .display,
                                            )
                                          ]),
                                    ),
                                    mate.SizedBox(
                                      height: 50,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Owned Via',
                                              style: FluentTheme.of(context)
                                                  .typography
                                                  .display,
                                            )
                                          ]),
                                    ),
                                    mate.SizedBox(
                                      height: 50,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'DATE OF REGISTRATION',
                                              style: FluentTheme.of(context)
                                                  .typography
                                                  .display,
                                            )
                                          ]),
                                    ),
                                  ])
                            ] +
                            List.generate(logic.listShops.length, (index) {
                              return TableRow(
                                  decoration: BoxDecoration(
                                    color: FluentTheme.of(context)
                                        .micaBackgroundColor,
                                    border: Border.symmetric(
                                        horizontal: BorderSide(
                                            color: FluentTheme.of(context)
                                                .accentColor)),
                                  ),
                                  children: [
                                    mate.InkWell(
                                      onTap: () {
                                        logic.changeindex = index;
                                        showDialog(
                                            barrierDismissible: true,
                                            builder: (BuildContext context) {
                                              return DefaultDialogBodyPage(
                                                  title: "Shops",
                                                  body: SelectShopsPage());
                                            },
                                            context: context);
                                        // selectMemberDialog(context, search: false);
                                      },
                                      child: SizedBox(
                                        height: 60,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              ListTile(
                                                leading: CircleAvatar(
                                                    backgroundImage: AssetImage(
                                                        assets.shop)),
                                                title: Text(
                                                  logic.listShops[index].shopId,
                                                  style: FluentTheme.of(context)
                                                      .typography
                                                      .display,
                                                ),
                                                subtitle: Text(
                                                  logic.listShops[index]
                                                              .hasOwner ==
                                                          false
                                                      ? "No Owner Yet"
                                                      : logic.listShops[index]
                                                          .companyName,
                                                  style: FluentTheme.of(context)
                                                      .typography
                                                      .display!
                                                      .copyWith(
                                                          color: Colors.white
                                                              .withOpacity(0.8),
                                                          fontWeight:
                                                              FontWeight.w100),
                                                ),
                                                onPressed: () {
                                                  logic.changeindex = index;
                                                  showDialog(
                                                      barrierDismissible: true,
                                                      builder: (BuildContext
                                                          context) {
                                                        return DefaultDialogBodyPage(
                                                          title: "Shops",
                                                          body:
                                                              SelectShopsPage(),
                                                        );
                                                      },
                                                      context: context);
                                                },
                                              )
                                            ]),
                                      ),
                                    ),
                                    mate.InkWell(
                                      onTap: () {
                                        logic.changeindex = index;
                                        showDialog(
                                            barrierDismissible: true,
                                            builder: (BuildContext context) {
                                              return DefaultDialogBodyPage(
                                                  title: "Shops",
                                                  body: SelectShopsPage());
                                            },
                                            context: context);
                                      },
                                      child: SizedBox(
                                          height: 60,
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                    logic.listShops[index]
                                                                .hasOwner ==
                                                            false
                                                        ? "No Owner Yet"
                                                        : logic.listShops[index]
                                                            .via,
                                                    style:
                                                        FluentTheme.of(context)
                                                            .typography
                                                            .display)
                                              ])),
                                    ),
                                    mate.InkWell(
                                      onTap: () {
                                        logic.changeindex = index;
                                        showDialog(
                                            barrierDismissible: true,
                                            builder: (BuildContext context) {
                                              return DefaultDialogBodyPage(
                                                  title: "Shops",
                                                  body: SelectShopsPage());
                                            },
                                            context: context);
                                      },
                                      child: SizedBox(
                                          height: 60,
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Expanded(
                                                          child: SizedBox()),
                                                      Text('13 August 2022',
                                                          style: FluentTheme.of(
                                                                  context)
                                                              .typography
                                                              .display),
                                                      Expanded(
                                                          child: SizedBox()),
                                                      SizedBox(
                                                        width: 50,
                                                        height: 50,
                                                        child: PlutoMenuBar(
                                                          mode: PlutoMenuBarMode
                                                              .tap,
                                                          height: 20,
                                                          backgroundColor:
                                                              FluentTheme.of(
                                                                      context)
                                                                  .micaBackgroundColor,
                                                          activatedColor:
                                                              FluentTheme.of(
                                                                      context)
                                                                  .cardColor,
                                                          // indicatorColor: Colors.deepOrange,
                                                          textStyle: TextStyle(
                                                              color: FluentTheme
                                                                      .of(context)
                                                                  .cardColor),
                                                          menuIconColor:
                                                              FluentTheme.of(
                                                                      context)
                                                                  .cardColor,
                                                          moreIconColor:
                                                              FluentTheme.of(
                                                                      context)
                                                                  .scaffoldBackgroundColor,
                                                          menus:
                                                              getMenus(context),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ])),
                                    ),
                                  ]);
                            }).toList(),
                      ),
                    ),
                    SpaceHeight(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        mate.SizedBox(
                          height: 30,
                          child: Button(
                            style: ButtonStyle(
                                backgroundColor:
                                    ButtonState.all(colors.primarydark_color)),
                            child: mate.Row(
                              children: [
                                Image.asset(assets.arrowback,
                                    width: 40, height: 30),
                                SpaceWidth(10),
                                Text(
                                  "Previous",
                                  style: FluentTheme.of(context)
                                      .typography
                                      .caption!
                                      .copyWith(fontSize: 14),
                                ),
                              ],
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     FluentPageRoute(
                              //       builder: (context) => CreateShopPage(),
                              //     ));
                            },
                          ),
                        ),
                        SpaceWidth(30),
                        mate.SizedBox(
                          height: 30,
                          child: Button(
                            style: ButtonStyle(
                                backgroundColor:
                                    ButtonState.all(colors.primarydark_color)),
                            child: mate.Row(
                              children: [
                                Text(
                                  "Next",
                                  style: FluentTheme.of(context)
                                      .typography
                                      .caption!
                                      .copyWith(fontSize: 14),
                                ),
                                Image.asset(assets.arrowfront,
                                    width: 40, height: 30),
                                SpaceWidth(10),
                              ],
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     FluentPageRoute(
                              //       builder: (context) => CreateShopPage(),
                              //     ));
                            },
                          ),
                        ),
                      ],
                    )
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
