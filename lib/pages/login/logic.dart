import 'dart:convert';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
// import 'package:one_market/constants/constants_and_imports.dart';
import 'package:one_market/constants/src/api_constants.dart';
import 'package:one_market/model/user.dart';
import 'package:one_market/pages/login/view.dart';
import 'package:one_market/pages/members/all_members/logic.dart';
import 'package:one_market/pages/navigation/view.dart';
import 'package:one_market/utils/app_state.dart';
import 'package:http/http.dart' as http;
import 'package:one_market/utils/error_handlers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'state.dart';

class LoginLogic extends AppState {
  final LoginState state = LoginState();
  var index = 0.obs;
  final isHasUser=false.obs;
  var isRememberMe=false.obs;
  late SharedPreferences sharedPreferences;
   setRememberMe(bool isremem)async{

    sharedPreferences
        .setBool(SharedPrefKeys.rememberMe, isremem).then((value) => isRememberMe.value=isremem);
  }
  var userModel =UserModel().obs;
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

          ErrorHandlers(context,
              isError: false,
              message: "User LoggedIn successfully",
              // messageServer: jsonDecode(response.body)["message"]

          );
          saveUser(response.body);
          print("my is lgged in  body ${response.body}");

          setToLoaded();
          Navigator.pushReplacementNamed(context, "/navigation");

        } else {
          setToError();
          ErrorHandlers(context,
              isError: true,
              message: "Email  or Password not correct",ismessage: true,
              messageServer: jsonDecode(response.body)["message"]);
          // Flyout(
          //   content: (BuildContext context) {
          //     return FlyoutContent(
          //         color: Colors.red, child: Text("Error logging in"));
          //   },
          //   child: Text(""),
          // );
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
        ErrorHandlers(context,isError: true, message: "No internet connection");

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
      userModel.value=UserModel.fromJson(jsonDecode(json)) ;
isHasUser.value=true;
      print('saved done ${jsonDecode(json)}');
      // isSelected = true;
    });
  }

  Future<dynamic>chooseScreen()async{
    print('ben');
    setToLoading();
    sharedPreferences= await SharedPreferences.getInstance();

    // return false;
    dynamic val=sharedPreferences.getBool(SharedPrefKeys.rememberMe);
    if (val == true) {
      setToLoaded();
      return true;

    }
    else {
      setToLoaded();
      return false;

    }






  }


  void showLogOutDialog(BuildContext context) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => ContentDialog(
        title: const Text('Log Out'),
        content:  Text(
            'Do you want to log out? ',style: FluentTheme.of(context).typography.title!.copyWith(color: FluentTheme.of(context).scaffoldBackgroundColor ),
        ),
        actions: [
          Button(
            child: const Text('Yes'),
            onPressed: () {
  Navigator.pop(context,true);

              // Delete file here
            },
          ),
          FilledButton(
            child: const Text('No'),
            onPressed: () => Navigator.pop(context,false),
          ),
        ],
      ),
    );
    if(result==true){        setRememberMe(false);
    Navigator.pushReplacementNamed(context, "/chooseScreen");}

  }
  @override
  void onReady() async{
    setToLoading();
    sharedPreferences =
    await SharedPreferences.getInstance() as SharedPreferences;
    isRememberMe.value=sharedPreferences.getBool(SharedPrefKeys.rememberMe)==null?false:sharedPreferences.getBool(SharedPrefKeys.rememberMe)!;
    // TODO: implement onReady
    userModel.value=UserModel.fromJson(jsonDecode(sharedPreferences.getString(SharedPrefKeys.user)!));
    isHasUser.value=true;
    setToLoading();
    if (await ishasinternet) {

      Get.put(All_membersLogic());
    }
    else{  ErrorHandlers(Get.context!,message:"No internet connection",isError: true );

  setToLoading();  }
    super.onReady();
  }
}
