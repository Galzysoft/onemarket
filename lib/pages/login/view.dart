import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' as mate;
import 'package:get/get.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:one_market/constants/constants_and_imports.dart';
import 'package:one_market/widgets/loader_progress2.dart';

import 'package:one_market/widgets/space.dart';

import '../../widgets/default_text_field/view.dart';
import '../navigation/view.dart';
import 'logic.dart';

class LoginPage extends mate.StatefulWidget {
  @override
  mate.State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends mate.State<LoginPage> {
  final logic = Get.put(LoginLogic());

  final state = Get
      .find<LoginLogic>()
      .state;

  TextEditingController usernameController =
  new TextEditingController(text: kReleaseMode ? "" : "vibe");

  TextEditingController passcontroller =
  new TextEditingController(text: kReleaseMode ? "" : "vibetek");
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    doWhenWindowReady(() {
      final win = appWindow;
      win.minSize = Size(810, 545);
      win.size = Size(955, 545);
      win.alignment = Alignment.center;
      win.title = strings.app_title;
      win.show();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ModalProgressHUD(
        inAsyncCall: logic.isloading,
        color: Colors.black,
        progressIndicator: loaderProgress2(),
        child: Acrylic(
          luminosityAlpha: 0.2,
          blurAmount: 0.3,
          child: FluentTheme(
            data: FluentTheme.of(context).copyWith(
                navigationPaneTheme: NavigationPaneThemeData(
                  backgroundColor: FluentTheme
                      .of(context)
                      .scaffoldBackgroundColor,
                )),
            child: NavigationView(
              content: ScaffoldPage(
                  header: SizedBox(
                    height: 60,
                    child: PageHeader(
                      title: Text(
                        'Login',
                        style: FluentTheme
                            .of(context)
                            .typography
                            .caption,
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
                                      padding:
                                      EdgeInsets.fromLTRB(100, 10, 100, 40),
                                      margin: EdgeInsets.fromLTRB(
                                          200, 10, 200, 40),
                                      color: FluentTheme
                                          .of(context)
                                          .micaBackgroundColor,
                                      child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SpaceHeight(10),
                                            Text(strings.app_title,
                                                style: FluentTheme
                                                    .of(context)
                                                    .typography
                                                    .titleLarge),
                                            SpaceHeight(20),
                                            DefaultTextField(
                                              controller: usernameController,
                                              hintText: "Username",
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
                                                    borderRadius:
                                                    BorderRadius.circular(10),
                                                    color: FluentTheme
                                                        .of(context)
                                                        .scaffoldBackgroundColor),
                                                child: mate.InkWell(
                                                  onTap: () {
                                                    logic.dologging(
                                                        context,
                                                        usernameController.text,
                                                        passcontroller.text);
                                                  },
                                                  child: Center(
                                                      child: Text(
                                                        "LOGIN",
                                                        style: FluentTheme
                                                            .of(context)
                                                            .typography
                                                            .caption,
                                                      )),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Obx(() {
                                                  return Checkbox(
                                                    style: CheckboxThemeData(
                                                        uncheckedDecoration: ButtonState
                                                            .all(BoxDecoration(
                                                            border: Border.all(
                                                                color: Colors
                                                                    .white)))),
                                                    checked: logic.isRememberMe
                                                        .value,
                                                    content: Text("Remember me",
                                                      style: FluentTheme
                                                          .of(context)
                                                          .typography
                                                          .display,),
                                                    onChanged: (value) =>
                                                    logic.setRememberMe(value!),
                                                  );
                                                })
                                              ],
                                            )
                                          ]),
                                    )),
                              ],
                            ),
                          )))),
            ),
          ),
        ),
      );
    });
  }
}
