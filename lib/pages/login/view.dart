import 'package:flutter/material.dart';
import 'package:one_market/constants/constants_and_imports.dart';

import 'package:one_market/widgets/spacehieght.dart';

import '../../widgets/default_text_field/view.dart';
import '../navigation/view.dart';
import 'logic.dart';

class LoginPage extends StatelessWidget {
  final logic = Get.put(LoginLogic());
  final state = Get.find<LoginLogic>().state;
  TextEditingController emailcontroller = new TextEditingController();

  TextEditingController passcontroller = new TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Acrylic(
      luminosityAlpha: 0.2,
      blurAmount: 0.3,
      child: NavigationView(
        content: ScaffoldPage(
            header: SizedBox(
              height: 60,
              child: PageHeader(
                title: const Text(
                  'Login',
                ),
              ),
            ),
            content: Center(
                child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            padding: EdgeInsets.fromLTRB(100, 10, 100, 40),
                            margin: EdgeInsets.fromLTRB(200, 10, 200, 40),
                            color: FluentTheme.of(context).micaBackgroundColor,
                            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                              SpaceHeight(10),
                              Text(strings.app_title,
                                  style: FluentTheme.of(context)
                                      .typography
                                      .titleLarge),
                              SpaceHeight(20),
                              DefaultTextField(
                                controller: emailcontroller,
                                hintText: "Email",
                              ),
                              SpaceHeight(10),
                              DefaultPasswordTextField(
                                  controller: passcontroller,
                                  hintText: "Password"),
                              SpaceHeight(10),
                              SizedBox(
                                width: double.infinity,
                                height: 40,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: FluentTheme.of(context)
                                          .scaffoldBackgroundColor),
                                    child: InkWell(
                                      onTap: () {Navigator.push(context, FluentPageRoute(builder: (context) => NavigationPage(),));},
                                      child: Center(
                                          child: Text(
                                            "LOGIN",
                                            style: FluentTheme.of(context)
                                                .typography
                                                .caption,
                                          )),
                                    ),

                                ),
                              )
                            ]),
                          )),
                        ],
                      ),
                    )))),
      ),
    );
  }
}
