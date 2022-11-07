import 'package:get/get.dart';
import 'package:flutter/material.dart' as mate;
import 'package:one_market/widgets/add_image/view.dart';
import '../../../constants/constants_and_imports.dart';
import '../../../widgets/default_combo_box/view.dart';
import '../../../widgets/default_date_picker/view.dart';
import '../../../widgets/default_text_field/view.dart';
import '../../../widgets/spacehieght.dart';
import '../../../widgets/spacewidth.dart';
import '../../../widgets/tool_bar/widget/toolBarItem.dart';
import '../../../widgets/users_header/view.dart';
import 'logic.dart';

class CreateShopPage extends StatelessWidget {
  final logic = Get.put(CreateShopLogic());
  final state = Get.find<CreateShopLogic>().state;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: ScaffoldPage(
        header:    UsersHeaderPage(toolBarItems: [
          ToolBarItem(
              onPressed: () {},
              label:"Save" ,
              icon:  assets.save) ,
          ToolBarItem(
              onPressed: () {},
              label:"Clear" ,
              icon:  assets.clear)  ], title: "Shop Information"),
        content: mate.Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: mate.Column(
            children: [

              Expanded(
                child: ListView(
                  children: [
                    Column(children: [
                      SizedBox(
                          width: double.infinity,
                          child: Card(
                            backgroundColor:
                                FluentTheme.of(context).micaBackgroundColor,
                            child: Column(children: [

                              SpaceHeight(10),
                              Row(
                                children: [
                                  Expanded(
                                    child: DefaultTextField(
                                      hintText: "Shop Number",
                                      controller: logic.shopnumber,
                                    ),
                                  ),
                                  SpaceWidth(25),
                                  Expanded(
                                    child: DefaultTextField(
                                      hintText: "Shop Address",
                                      controller: logic.shopAdress,
                                    ),
                                  ),
                                  SpaceWidth(25),

                                ],
                              ),
                              SpaceHeight(30),
                              mate.Row(
                                children: [
                                  Text(
                                    "Did you serve within the market? if yes.",
                                    style: FluentTheme.of(context)
                                        .typography
                                        .bodyLarge!
                                        .copyWith(fontStyle: FontStyle.normal),
                                  ),
                                ],
                              ),
                              SpaceHeight(
                                30,
                              ),

                            ]),
                          )),

                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
