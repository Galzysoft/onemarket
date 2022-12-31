import 'package:get/get.dart';
import 'package:flutter/material.dart' as mate;
import 'package:one_market/pages/shop/widgets/add_image.dart';
import 'package:one_market/widgets/add_image/view.dart';
import 'package:one_market/widgets/select_members/view.dart';
import '../../../constants/constants_and_imports.dart';
import '../../../widgets/default_combo_box/view.dart';
import '../../../widgets/default_date_picker/view.dart';
import '../../../widgets/default_text_field/view.dart';
import '../../../widgets/space.dart';
import '../../../widgets/spacewidth.dart';
import '../../../widgets/tool_bar/widget/toolBarItem.dart';
import '../../../widgets/users_header/view.dart';
import 'logic.dart';

class CreateShopPage extends StatelessWidget {
  final logic = Get.put(CreateShopLogic());
  final state = Get.find<CreateShopLogic>().state;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: UsersHeaderPage(toolBarItems: [
        ToolBarItem(onPressed: () {}, label: "Save", icon: assets.save),
        ToolBarItem(onPressed: () {}, label: "Clear", icon: assets.clear)
      ], title: "Shop Information"),
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
                          child: Obx(() {
                            return Column(children: [
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
                              SpaceHeight(
                                30,
                              ),
                              Obx(() {
                                return SelectMembersPage(
                                  onTap: () {
                                    selectMemberDialog(
                                      context,
                                    ).then((value) =>
                                    logic.member.value = value!.name);
                                  },
                                  member: logic.member.value,
                                  labelText: 'Choose Owner (Optional)',
                                  hintText: 'Select Members',
                                );
                              }),
                              logic.member.value.isEmpty
                                  ? SizedBox()
                                  : Column(
                                children: [
                                  SpaceHeight(20),
                                  Row(
                                    children: [
                                      AddImageShopTenancy(
                                        avatarTitle: "Tenancy Receipt",
                                      ),
                                      SpaceWidth(25),
                                      AddRegDoc(
                                        avatarTitle:
                                        "Registration Document",
                                      ),
                                      SpaceWidth(25),
                                      Expanded(
                                        child: DefaultComboBox(
                                          Icon: Icon(
                                            mate.Icons.people_outline_rounded,
                                            color: FluentTheme.of(context)
                                                .inactiveColor,
                                          ),
                                          hintText: "Owned Via",
                                          comboBoxListItems: [
                                            '',
                                            'LandLord',
                                            'Local Goverment',
                                            'Bank'
                                          ],
                                          label:
                                          'How do you purchased the shop ?',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SpaceHeight(20),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: DefaultTextField(
                                          hintText: "Company Name",
                                          controller: logic.nationality,
                                        ),
                                      ),

                                      SpaceWidth(25),
                                      Expanded(
                                        child: Obx(() {
                                          return mate.Padding(
                                            padding: const EdgeInsets.only(bottom: 20.0),
                                            child: SelectMembersPage(
                                              onTap: () {
                                                selectMemberDialog(
                                                  context,
                                                ).then((value) => logic
                                                    .guarantor.value = value!.name);
                                              },
                                              member: logic.guarantor.value,
                                              labelText: 'Choose Guarantor ',
                                              hintText: 'Select a Guarantor',
                                            ),
                                          );
                                        }),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                            ]);
                          }),
                        )),
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
