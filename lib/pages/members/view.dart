import 'package:flutter/material.dart' as mate;
import 'package:get/get.dart';
import 'package:one_market/widgets/spacewidth.dart';

import '../../constants/constants_and_imports.dart';
import '../../widgets/default_combo_box/view.dart';
import '../../widgets/default_date_picker/view.dart';
import '../../widgets/default_text_field/view.dart';
import '../../widgets/spacehieght.dart';
import '../../widgets/users_header/view.dart';
import 'logic.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart'as Acrylics;
class MembersPage extends mate.StatefulWidget {
  @override
  mate.State<MembersPage> createState() => _MembersPageState();
}

class _MembersPageState extends mate.State<MembersPage> {
  final logic = Get.put(MembersLogic());

  final state = Get.find<MembersLogic>().state;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Acrylics.Window.setEffect(
        effect: Acrylics.WindowEffect.acrylic,color:  colors.primarydark_color.withOpacity(0.6));
  }
  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: ScaffoldPage(
        content: mate.Padding(
          padding: const EdgeInsets.fromLTRB(20,20,20,0),
          child: mate.Column(
            children: [
              UsersHeaderPage(),
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
                                  Text("Members Information",
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
                                      hintText: "Firstname",
                                      controller: logic.firstname,
                                    ),
                                  ),
                                  SpaceWidth(25),
                                  Expanded(
                                    child: DefaultTextField(
                                      hintText: "Middle name",
                                      controller: logic.middlename,
                                    ),
                                  ),
                                  SpaceWidth(25),
                                  Expanded(
                                    child: DefaultTextField(
                                      hintText: "Lastname",
                                      controller: logic.lastname,
                                    ),
                                  )
                                ],
                              ),
                              SpaceHeight(10),
                              Row(
                                children: [
                                  Expanded(
                                    child: DefaultTextField(
                                      hintText: "Phone number",
                                      controller: logic.phonenumber,
                                    ),
                                  ),
                                  SpaceWidth(25),
                                  Expanded(
                                    child: DefaultTextField(
                                      hintText: "Email",
                                      controller: logic.email,
                                    ),
                                  ),
                                  SpaceWidth(25),
                                  Expanded(
                                    child: DefaultTextField(
                                      hintText: "Username",
                                      controller: logic.username,
                                    ),
                                  )
                                ],
                              ),
                              SpaceHeight(10),
                              Row(
                                children: [
                                  Expanded(
                                    child: DefaultTextField(
                                      hintText: "Nationality",
                                      controller: logic.nationality,
                                    ),
                                  ),
                                  SpaceWidth(25),
                                  Expanded(
                                    child: DefaultComboBox(
                                      Icon: Icon(
                                        mate.Icons.person_pin,
                                        color: FluentTheme.of(context)
                                            .inactiveColor,
                                      ),
                                      hintText: "Sex",
                                      comboBoxListItems: ['', 'Male', 'Female'],
                                      label: 'Select Gender',
                                    ),
                                  ),
                                  SpaceWidth(25),
                                  Expanded(
                                    child: DefaultComboBox(
                                      Icon: Icon(
                                        mate.Icons.people_outline_rounded,
                                        color: FluentTheme.of(context)
                                            .inactiveColor,
                                      ),
                                      hintText: "Marital Status",
                                      comboBoxListItems: [
                                        '',
                                        'Single',
                                        'Married',
                                        'Divorce'
                                      ],
                                      label: 'Select Marital Status',
                                    ),
                                  ),
                                ],
                              ),
                              SpaceHeight(10),
                              Row(
                                children: [
                                  Expanded(
                                      child: mate.Padding(
                                        padding: const EdgeInsets.only(bottom: 22.0),
                                        child: DefaultDatePickerPage(
                                            hintText: 'Date of birth'),
                                      )),
                                  SpaceWidth(25),
                                  Expanded(
                                    child: DefaultPasswordTextField(
                                      hintText: "Password",
                                      controller: logic.password,
                                    ),
                                  ),
                                  SpaceWidth(25),
                                  Expanded(
                                    child: DefaultPasswordTextField(
                                      hintText: "Confirm Password",
                                      controller: logic.confirmpassword,
                                    ),
                                  ),
                                ],
                              )
                            ]),
                          )),
                      SizedBox(
                        height: 60,
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              mate.SizedBox(width: 150,
                            child: Button(
                              style: ButtonStyle(
                                  backgroundColor:
                                      ButtonState.all(colors.accent_color)),
                              child: Text("Member List",style: FluentTheme.of(context).typography.caption,),
                              onPressed: () {

                              },
                            ),
                          ),    mate.SizedBox(width: 150,
                            child: Button(
                              style: ButtonStyle(
                                  backgroundColor:
                                  ButtonState.all(colors.primarydark_color)),
                              child: Text("Save",style: FluentTheme.of(context).typography.caption,),
                              onPressed: () {

                              },
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
