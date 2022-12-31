import 'dart:convert';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import 'package:one_market/constants/src/api_constants.dart';
import 'package:one_market/model/user.dart';
import 'package:one_market/pages/navigation/view.dart';
import 'package:one_market/utils/app_state.dart';
import 'package:http/http.dart' as http;
import 'package:one_market/utils/error_handlers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'state.dart';

class LoginLogic extends AppState {
  final LoginState state = LoginState();
  var index = 0.obs;
  late SharedPreferences sharedPreferences;
  UserModel userModel =UserModel();
  List<Widget> pages = [
    ScaffoldPage(
        header: PageHeader(
          title: const Text('Inputs'),
        ),
        content: Center(child: const Text('Inputs'))),
    ScaffoldPage(
        header: PageHeader(
          title: const Text('colors'),
        ),
        content: Center(child: const Text('colors'))),
    ScaffoldPage(
        header: PageHeader(
          title: const Text('into'),
        ),
        content: Center(child: const Text('into'))),
    ScaffoldPage(
        header: PageHeader(
          title: const Text('sss'),
        ),
        content: Center(child: const Text('ss'))),
    ScaffoldPage(
        header: PageHeader(
          title: const Text('Inputs'),
        ),
        content: Center(child: const Text('Inputs'))),
    ScaffoldPage(
        header: PageHeader(
          title: const Text('ss'),
        ),
        content: Center(child: const Text('ss'))),
    ScaffoldPage(
        header: PageHeader(
          title: const Text('Inputs'),
        ),
        content: Center(child: const Text('Inputs'))),
    ScaffoldPage(
        header: PageHeader(
          title: const Text('Inputs'),
        ),
        content: Center(child: const Text('Inputs'))),
  ];

  static showMessage(
      {required String message,
      required String messageServer,
      required bool isError}) {
    return showSnackbar(
      Get.context!,
      ScaffoldPage(
        content: SnackbarTheme(
          data: SnackbarThemeData(
              decoration: BoxDecoration(
            color: isError == true ? Colors.red : Colors.green,
          )),
          child: Snackbar(
            extended: true,
            action: Button(
              child: Text("Okay"),
              onPressed: () {
                Navigator.pop(Get.context!);
              },
            ),
            content: Text(messageServer == "null" || messageServer.isEmpty
                ? message
                : messageServer),
          ),
        ),
      ),
    );
    // showCustomSnackBar(messageServer=="null"||message.isEmpty?message:messageServer, bannerColor: isError?Colors.red:Colors.green);
  }

  void changeIndex(int newIndex) {}
  static Uri uri = Uri.parse(Routes.loginURL);

  Future<void> dologging(
      BuildContext context, String userName, String pass) async {
    if (userName.isEmpty) {
      ErrorHandlers(context,isError: true, message: "username field is empty");
    }

    else if (pass.isEmpty) {
      ErrorHandlers(context,isError: true, message: "Password field is empty");
    }


   else {
      setToLoading();
      if (await ishasinternet) {
        print("my myooo  code is ${ishasinternet.toString()}");
        Map<String, String> body = {
          'username': userName,
          'password': pass,
        };
        // Navigator.pushReplacement(
        //     context,
        //     FluentPageRoute(
        //       builder: (context) => NavigationPage(),
        //     ));
        final http.Response response = await http.post(uri,
            body: json.encode(body), headers: Headers.loginHeader);

        print("my response code is ${response.statusCode}");
        print("my response body is ${response.body}");
        // if (response.body.trim().isEmpty) {
        Map bodyResponse = json.decode(response.body);
        print("  body message ${bodyResponse}");
        setToLoaded();
        print("clicked me2 ${isloading}");
        if (response.statusCode == 200) {
          Map bodyResponse = json.decode(response.body);
          ErrorHandlers(context,
              isError: false,
              message: "User LoggedIn successfully",
              messageServer: jsonDecode(response.body)["message"]);
          saveUser(response.body);
          print("my is lgged in  body ${response.body}");

          setToLoaded();

          Navigator.pushReplacement(
              context,
              FluentPageRoute(
                builder: (context) => NavigationPage(),
              ));
        } else {
          setToError();
          ErrorHandlers(context,
              isError: true,
              message: "Email  or Password not correct",
              messageServer: jsonDecode(response.body)["status"]);
          Flyout(
            content: (BuildContext context) {
              return FlyoutContent(
                  color: Colors.red, child: Text("Error logging in"));
            },
            child: Text(""),
          );
          // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          //   content: Row(
          //     children: [
          //       Expanded(
          //           child: Text(
          //               "Incorrect email and password or account not activated yet ",
          //               style: TextStyle(fontWeight: FontWeight.bold))),
          //       Icon(
          //         Icons.error_outline_sharp,
          //         color: colors.primarywhite_color,
          //       ),
          //     ],
          //   ),
          //   backgroundColor: Colors.red,
          //   duration: Duration(milliseconds: 5000),
          // ));

          // throw Exception('Failed to send email.');

        }
      } else {
        setToError();
        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //   content: Row(
        //     children: [
        //       Expanded(
        //           child: Text(strings.offline,
        //               style: TextStyle(fontWeight: FontWeight.bold))),
        //       Icon(
        //         Icons.error_outline_sharp,
        //         color: colors.primarywhite_color,
        //       ),
        //     ],
        //   ),
        //   backgroundColor: Colors.deepOrange,
        //   duration: Duration(milliseconds: 3000),
        // ));

        // if (await DB.loginUser(context, email, pass) == true) {
        //   // if(!kReleaseMode)   {  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //   //   content: Row(
        //   //     children: [
        //   //       Expanded(
        //   //           child: Text("Login  successfully",
        //   //               style: TextStyle(fontWeight: FontWeight.bold))),
        //   //       Icon(
        //   //         Icons.done_all,
        //   //         color: colors.primarywhite_color,
        //   //       ),
        //   //     ],
        //   //   ),
        //   //   backgroundColor: Colors.green,
        //   //   duration: Duration(milliseconds: 5000),
        //   // ));}
        // } else {
        //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //     content: Row(
        //       children: [
        //         Expanded(
        //             child: Text(
        //                 "Incorrect email and password or account not activated yet ",
        //                 style: TextStyle(fontWeight: FontWeight.bold))),
        //         Icon(
        //           Icons.error_outline_sharp,
        //           color: colors.primarywhite_color,
        //         ),
        //       ],
        //     ),
        //     backgroundColor: Colors.red,
        //     duration: Duration(milliseconds: 5000),
        //   ));
        // }
        print("no internet checker ");
      }
    }
  }
  Future<void> saveUser(String json) async {


    sharedPreferences
        .setString(SharedPrefKeys.user, json)
        .whenComplete(() {
      userModel=UserModel.fromJson(jsonDecode(json)) ;

      print('saved done ${jsonDecode(json)}');
      // isSelected = true;
    });
  }
  @override
  void onReady() async{
    sharedPreferences =
    await SharedPreferences.getInstance() as SharedPreferences;
    // TODO: implement onReady
    super.onReady();
  }
}
