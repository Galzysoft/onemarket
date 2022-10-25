import 'package:get/get.dart';
import 'package:flutter/material.dart' as mate;
import '../../../constants/constants_and_imports.dart';
import '../../../widgets/default_combo_box/view.dart';
import '../../../widgets/default_date_picker/view.dart';
import '../../../widgets/default_text_field/view.dart';
import '../../../widgets/spacehieght.dart';
import '../../../widgets/spacewidth.dart';
import '../../../widgets/users_header/view.dart';
import 'logic.dart';

class CreateShopPage extends StatelessWidget {
  final logic = Get.put(CreateShopLogic());
  final state = Get.find<CreateShopLogic>().state;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: ScaffoldPage(
        content: mate.Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: mate.Column(
            children: [
              SpaceHeight(10),
              UsersHeaderPage(backbutton: true),
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
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Shop Information",
                                      style: FluentTheme.of(context)
                                          .typography
                                          .bodyLarge),
                                  Expanded(child: SizedBox()),
                                  Card(
                                      backgroundColor:
                                          FluentTheme.of(context).inactiveColor,
                                      padding: EdgeInsets.all(10),
                                      child: Image.asset(
                                          height: 70, assets.insert)),
                                  SpaceWidth(50)
                                ],
                              ),
                              SpaceHeight(10),
                              Row(
                                children: [
                                  Expanded(
                                    child: DefaultTextField(
                                      hintText: "Shop Name",
                                      controller: logic.shopname,
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
                                  Expanded(
                                    child: DefaultTextField(
                                      hintText: "How did you secure The shop ?",
                                      controller: logic.howDidYouGetTheShop,
                                    ),
                                  )
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
                              Row(
                                children: [
                                  Expanded(
                                    child: DefaultTextField(
                                      hintText: "Company name",
                                      controller: logic.companyname,
                                    ),
                                  ),     SpaceWidth(25),

                                  Expanded(
                                    child: DefaultTextField(
                                      hintText: "Company address",
                                      controller: logic.companyaddress,
                                    ),
                                  ),
                                  SpaceWidth(25),
                                  Expanded(
                                    child: DefaultTextField(
                                      hintText: "Phone number",
                                      controller: logic.phonenumber,
                                    ),
                                  ),

                                ],
                              ),
                              SpaceHeight(30),
                              mate.Row(
                                children: [
                                  Text(
                                    "Did you serve within the market? if No.",
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
                              Row(
                                children: [
                                  Expanded(
                                    child: DefaultTextField(
                                      hintText: "Give Detail Of where\n you are coming from",
                                      controller: logic.companyname,
                                    ),
                                  ),     Expanded(child: SpaceWidth(25)),

                                
                                  Expanded(
                                    child: DefaultTextField(
                                      hintText: "Phone number",
                                      controller: logic.phonenumber,
                                    ),
                                  ),

                                ],
                              ),
                            ]),
                          )),
                      SizedBox(
                        height: 60,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [

                              mate.SizedBox(
                                width: 150,
                                child: Button(
                                  style: ButtonStyle(
                                      backgroundColor: ButtonState.all(
                                          colors.primarydark_color)),
                                  child: Text(
                                    "Save",
                                    style: FluentTheme.of(context)
                                        .typography
                                        .caption,
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            ]),
                      )
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
