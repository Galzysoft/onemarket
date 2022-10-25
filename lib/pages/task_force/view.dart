import 'package:get/get.dart';
import 'package:one_market/constants/constants_and_imports.dart';
import 'package:flutter/material.dart' as mate;
import 'package:one_market/pages/task_force/all_task_force/view.dart';
import 'package:one_market/widgets/default_combo_box/view.dart';
import 'package:one_market/widgets/default_date_picker/view.dart';
import 'package:one_market/widgets/default_text_field/view.dart';
import 'package:one_market/widgets/spacehieght.dart';
import 'package:one_market/widgets/spacewidth.dart';
import 'package:one_market/widgets/users_header/view.dart';
import 'logic.dart';

class TaskForcePage extends StatelessWidget {
  final logic = Get.put(TaskForceLogic());
  final state = Get.find<TaskForceLogic>().state;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: ScaffoldPage(
        content: mate.Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: mate.Column(
            children: [
              UsersHeaderPage(),
              Expanded(
                child: ListView(
                  children: [
                    Column(children: [
                      SpaceHeight(10),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            mate.SizedBox(
                              width: 150,
                              child: Button(
                                style: ButtonStyle(
                                    backgroundColor:
                                        ButtonState.all(colors.accent_color)),
                                child: Text(
                                  "All Taskforces",
                                  style: FluentTheme.of(context)
                                      .typography
                                      .caption,
                                ),
                                onPressed: () {Navigator.push(context, FluentPageRoute(builder: (context) => AllTaskForcePage(),));},

                              ),
                            ),
                            SpaceWidth(10),
                            Expanded(child: SizedBox()),
                          ]),
                      SpaceHeight(10),
                      SizedBox(
                          width: double.infinity,
                          child: Card(
                            backgroundColor:
                                FluentTheme.of(context).micaBackgroundColor,
                            child: Column(children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Create Taskforce Member",
                                          style: FluentTheme.of(context)
                                              .typography
                                              .bodyLarge),
                                      SizedBox(height: 200,width:500,
                                        child: ListTile(
                                          leading: Card(
                                              backgroundColor:
                                                  FluentTheme.of(context)
                                                      .inactiveColor,
                                              padding: EdgeInsets.all(10),
                                              child: Image.asset(
                                                  height: 120, assets.insert)),
                                          title: Padding(
                                            padding: const EdgeInsets.only(bottom: 16.0),
                                            child: Text(
                                              "Upload Picture",
                                              style: FluentTheme.of(context)
                                                  .typography
                                                  .caption,
                                            ),
                                          ),subtitle: SizedBox(width: 150,
                                          child: Button(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                ButtonState.all(colors.accent_color)),
                                            child: Text("Take Picture",style: FluentTheme.of(context).typography.caption,),
                                            onPressed: () {

                                            },
                                          ),
                                        ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
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
                                      hintText: "Email",
                                      controller: logic.email,
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
                                      hintText: "Taskforce Type",
                                      comboBoxListItems: ['', 'Fee Collector', 'Security'],
                                      label: 'Select Taskforce Type',
                                    ),
                                  ),
                                  SpaceWidth(25),

                                  Expanded(
                                    child: DefaultPasswordTextField(
                                      hintText: "Password",
                                      controller: logic.password,
                                    ),
                                  ),

                                ],
                              ),

                              SpaceHeight(10),

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
