import 'package:flutter/material.dart' as mate;
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:one_market/widgets/spacewidth.dart';

import '../../constants/constants_and_imports.dart';
import '../../widgets/app_skelekton/view.dart';
import '../../widgets/default_combo_box/view.dart';
import '../../widgets/default_date_picker/view.dart';
import '../../widgets/default_text_field/view.dart';
import '../../widgets/spacehieght.dart';
import '../../widgets/tool_bar/widget/toolBarItem.dart';
import '../../widgets/users_header/view.dart';
import 'logic.dart';

class FeesPage extends StatelessWidget {
  final logic = Get.put(FeesLogic());
  final state = Get.find<FeesLogic>().state;

  List pages = [  CreateFees(logic:FeesLogic() ), AllFees(logic: FeesLogic()),
   ];
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
            "Create Fees",
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
              "View Fees" + "      ",
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


class CreateFees extends StatelessWidget {
  const CreateFees({Key? key, required this.logic}) : super(key: key);

  final FeesLogic logic;

  @override
  mate.Widget build(mate.BuildContext context) {
    return ScaffoldPage(
      header:       UsersHeaderPage(
     toolBarItems: [
        ToolBarItem(
            onPressed: () {},
            label:"Save" ,
            icon:  assets.create) ,
        ToolBarItem(
            onPressed: () {},
            label:"Clear" ,
            icon:  assets.clear)  ], title: "Create Fees"),
      content: SingleChildScrollView(
        child: mate.Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            SpaceHeight(10),
            Row(
              children: [
                Expanded(
                  child: DefaultTextField(
                    hintText: "Fee Name",
                    controller: logic.feeName,
                  ),
                ),
                SpaceWidth(405),
              ],
            ),
            SpaceHeight(10),
            Row(
              children: [
                Expanded(
                  child: DefaultTextField(
                    hintText: "Fee Description",
                    controller: logic.feeDescription,
                  ),
                ),
                SpaceWidth(405),
              ],
            ),
            SpaceHeight(10),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Duration Based?",
                        style: FluentTheme.of(context).typography.caption,
                      ),
                      SpaceHeight(
                        10,
                      ),
                      Obx(() {
                        return Row(
                          children: List.generate(logic.radioButtons.length, (index) {
                            return mate.Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RadioButton(
                                checked: logic.currentIndex.value == index,
                                // set onChanged to null to disable the button
                                onChanged: (value) =>
                                    logic.currentIndex.value = index,
                                content: Text(
                                  logic.radioButtons[index],
                                  style: FluentTheme.of(context).typography.caption,
                                ),
                              ),
                            );
                          }),
                        );
                      }),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: DefaultTextField(
                              hintText: "Amount",
                              controller: logic.amount,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SpaceWidth(40),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SpaceHeight(
                        60,
                      ),
                      Obx(() {
                        return Row(
                          children: [
                            logic.currentIndex == 1
                                ? SizedBox()
                                : Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Fee Duration",
                                          style: FluentTheme.of(context)
                                              .typography
                                              .caption,
                                        ),
                                        SpaceHeight(
                                          10,
                                        ),
                                        TextFormBox(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10.0, horizontal: 8),
                                            controller: logic.duration,
                                            style: FluentTheme.of(context)
                                                .typography
                                                .caption,
                                            decoration: BoxDecoration(
                                              color: FluentTheme.of(context)
                                                  .inactiveColor,
                                            ),
                                            validator: (text) {
                                              if (text == null || text.isEmpty)
                                                return 'Provide an email';
                                            }),
                                      ],
                                    ),
                                  ),
                          ],
                        );
                      }),
                      SpaceHeight(
                        10,
                      ),
                      Obx(() {
                        return Row(
                          children: [
                            Expanded(
                              child: Checkbox(
                                content: Text(
                                  "Owner",
                                  style: FluentTheme.of(context).typography.caption,
                                ),
                                checked: logic.owner.value,
                                onChanged: (value) =>
                                    logic.owner.value = !logic.owner.value,
                              ),
                            ),
                            Expanded(
                              child: Checkbox(
                                content: Text(
                                  "Apprentice",
                                  style: FluentTheme.of(context).typography.caption,
                                ),
                                checked: logic.apprientice.value,
                                onChanged: (value) => logic.apprientice.value =
                                    !logic.apprientice.value,
                              ),
                            )
                          ],
                        );
                      }),
                      Obx(() {
                        return Row(
                          children: [
                            Expanded(
                              child: Checkbox(
                                content: Text(
                                  "Attachee",
                                  style: FluentTheme.of(context).typography.caption,
                                ),
                                checked: logic.attachee.value,
                                onChanged: (value) =>
                                    logic.attachee.value = !logic.attachee.value,
                              ),
                            ),
                            Expanded(
                              child: Checkbox(
                                content: Text(
                                  "Workers",
                                  style: FluentTheme.of(context).typography.caption,
                                ),
                                checked: logic.worker.value,
                                onChanged: (value) =>
                                    logic.worker.value = !logic.worker.value,
                              ),
                            )
                          ],
                        );
                      }),
                      Obx(() {
                        return Row(
                          children: [
                            Expanded(
                              child: Checkbox(
                                content: Text(
                                  "TaskForce",
                                  style: FluentTheme.of(context).typography.caption,
                                ),
                                checked: logic.taskforce.value,
                                onChanged: (value) =>
                                    logic.taskforce.value = !logic.taskforce.value,
                              ),
                            ),
                          ],
                        );
                      }),
                    ],
                  ),
                ),
                SpaceWidth(405),
              ],
            ),
            SpaceHeight(10),
            SizedBox(
              height: 60,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                mate.SizedBox(
                  width: 150,
                  child: Button(
                    style: ButtonStyle(
                        backgroundColor: ButtonState.all(colors.accent_color)),
                    child: Text(
                      "Member List",
                      style: FluentTheme.of(context).typography.caption,
                    ),
                    onPressed: () {},
                  ),
                ),
                mate.SizedBox(
                  width: 150,
                  child: Button(
                    style: ButtonStyle(
                        backgroundColor: ButtonState.all(colors.primarydark_color)),
                    child: Text(
                      "Save",
                      style: FluentTheme.of(context).typography.caption,
                    ),
                    onPressed: () {},
                  ),
                )
              ]),
            )
          ]),
        ),
      ),
    );
  }
}

class AllFees extends StatelessWidget {
  const AllFees({
    mate.Key? key,
    required this.logic,
  }) : super(key: key);

  final FeesLogic logic;
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(header:       UsersHeaderPage(     centerWidget: SizedBox(height: 100,
      child: TextFormBox(
        controller: logic.controller,
        style: FluentTheme.of(context).typography.caption!.copyWith(
            color: FluentTheme.of(context).micaBackgroundColor),
        placeholder: "Search for Fees",
        prefix: mate.Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(assets.search, height: 32),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: FluentTheme.of(context).micaBackgroundColor.withOpacity(0.2),
        ),
      ),
    ),toolBarItems: [
      ToolBarItem(
          onPressed: () {},
          label:"Print" ,
          icon:  assets.print) ,
      ToolBarItem(
          onPressed: () {},
          label:"Clear" ,
          icon:  assets.clear)  ], title: "Contribution"),
      content: mate.Container(
        width: Get.width,
        height: Get.height,
        child: Container(
            margin: EdgeInsets.all(20),
            child: mate.Column(
              children: [

                SpaceHeight(10),
                Expanded(
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
                                  children: [
                                    Text(
                                      'CLIENT',
                                      style: FluentTheme.of(context).typography.display,
                                    )
                                  ]),
                            ),
                            mate.SizedBox(
                              height: 50,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'FEE',
                                      style: FluentTheme.of(context).typography.display,
                                    )
                                  ]),
                            ),
                            mate.SizedBox(
                              height: 50,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'DATE',
                                      style: FluentTheme.of(context).typography.display,
                                    )
                                  ]),
                            ),
                            mate.SizedBox(
                              height: 50,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'STATUS',
                                      style: FluentTheme.of(context).typography.display,
                                    )
                                  ]),
                            ),
                          ]),
                      TableRow(
                          decoration: BoxDecoration(
                            color: FluentTheme.of(context).micaBackgroundColor,
                            border: Border.symmetric(
                                horizontal: BorderSide(
                                    color: FluentTheme.of(context).accentColor)),
                          ),
                          children: [
                            mate.SizedBox(
                              height: 60,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ListTile(
                                      leading: CircleAvatar(
                                          backgroundImage: AssetImage(assets.user)),
                                      title: Text(
                                        'Emma Obinna',
                                        style:
                                            FluentTheme.of(context).typography.display,
                                      ),
                                      subtitle: Text(
                                        'example@gmail.com',
                                        style: FluentTheme.of(context)
                                            .typography
                                            .display!
                                            .copyWith(
                                                color: Colors.white.withOpacity(0.8),
                                                fontWeight: FontWeight.w100),
                                      ),
                                    )
                                  ]),
                            ),
                            mate.SizedBox(
                                height: 60,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('₦3500',
                                          style: FluentTheme.of(context)
                                              .typography
                                              .display)
                                    ])),
                            mate.SizedBox(
                                height: 60,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('13 August 2022',
                                          style: FluentTheme.of(context)
                                              .typography
                                              .display)
                                    ])),
                            mate.SizedBox(
                                height: 60,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: double.infinity,
                                        height: 30,
                                        child: Container(margin: EdgeInsets.only(left: 60,right: 60),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: FluentTheme.of(context)
                                                  .accentColor),
                                          child: mate.InkWell(
                                            onTap: () {

                                            },
                                            child: Center(
                                                child: Text(
                                              "PAYED",
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
                                    color: FluentTheme.of(context).accentColor)),
                          ),
                          children: [
                            mate.SizedBox(
                              height: 60,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ListTile(
                                      leading: CircleAvatar(
                                          backgroundImage: AssetImage(assets.user)),
                                      title: Text(
                                        'Emma Obinna',
                                        style:
                                        FluentTheme.of(context).typography.display,
                                      ),
                                      subtitle: Text(
                                        'example@gmail.com',
                                        style: FluentTheme.of(context)
                                            .typography
                                            .display!
                                            .copyWith(
                                            color: Colors.white.withOpacity(0.8),
                                            fontWeight: FontWeight.w100),
                                      ),
                                    )
                                  ]),
                            ),
                            mate.SizedBox(
                                height: 60,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('₦3500',
                                          style: FluentTheme.of(context)
                                              .typography
                                              .display)
                                    ])),
                            mate.SizedBox(
                                height: 60,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('13 August 2022',
                                          style: FluentTheme.of(context)
                                              .typography
                                              .display)
                                    ])),
                            mate.SizedBox(
                                height: 60,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: double.infinity,
                                        height: 30,
                                        child: Container(margin: EdgeInsets.only(left: 60,right: 60),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: FluentTheme.of(context)
                                                  .accentColor),
                                          child: mate.InkWell(
                                            onTap: () {

                                            },
                                            child: Center(
                                                child: Text(
                                                  "PAYED",
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
                                    color: FluentTheme.of(context).accentColor)),
                          ),
                          children: [
                            mate.SizedBox(
                              height: 60,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ListTile(
                                      leading: CircleAvatar(
                                          backgroundImage: AssetImage(assets.user)),
                                      title: Text(
                                        'Emma Obinna',
                                        style:
                                        FluentTheme.of(context).typography.display,
                                      ),
                                      subtitle: Text(
                                        'example@gmail.com',
                                        style: FluentTheme.of(context)
                                            .typography
                                            .display!
                                            .copyWith(
                                            color: Colors.white.withOpacity(0.8),
                                            fontWeight: FontWeight.w100),
                                      ),
                                    )
                                  ]),
                            ),
                            mate.SizedBox(
                                height: 60,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('₦3500',
                                          style: FluentTheme.of(context)
                                              .typography
                                              .display)
                                    ])),
                            mate.SizedBox(
                                height: 60,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('13 August 2022',
                                          style: FluentTheme.of(context)
                                              .typography
                                              .display)
                                    ])),
                            mate.SizedBox(
                                height: 60,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: double.infinity,
                                        height: 30,
                                        child: Container(margin: EdgeInsets.only(left: 60,right: 60),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: Color(0xffCF6A31)),
                                          child: mate.InkWell(
                                            onTap: () {

                                            },
                                            child: Center(
                                                child: Text(
                                                  "PAY",
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
                                    color: FluentTheme.of(context).accentColor)),
                          ),
                          children: [
                            mate.SizedBox(
                              height: 60,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ListTile(
                                      leading: CircleAvatar(
                                          backgroundImage: AssetImage(assets.user)),
                                      title: Text(
                                        'Emma Obinna',
                                        style:
                                        FluentTheme.of(context).typography.display,
                                      ),
                                      subtitle: Text(
                                        'example@gmail.com',
                                        style: FluentTheme.of(context)
                                            .typography
                                            .display!
                                            .copyWith(
                                            color: Colors.white.withOpacity(0.8),
                                            fontWeight: FontWeight.w100),
                                      ),
                                    )
                                  ]),
                            ),
                            mate.SizedBox(
                                height: 60,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('₦3500',
                                          style: FluentTheme.of(context)
                                              .typography
                                              .display)
                                    ])),
                            mate.SizedBox(
                                height: 60,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('13 August 2022',
                                          style: FluentTheme.of(context)
                                              .typography
                                              .display)
                                    ])),
                            mate.SizedBox(
                                height: 60,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: double.infinity,
                                        height: 30,
                                        child: Container(margin: EdgeInsets.only(left: 60,right: 60),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: FluentTheme.of(context)
                                                  .accentColor),
                                          child: mate.InkWell(
                                            onTap: () {

                                            },
                                            child: Center(
                                                child: Text(
                                                  "PAYED",
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
              ],
            )),
      ),
    );
  }
}
