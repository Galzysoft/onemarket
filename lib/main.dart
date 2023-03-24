import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';
import 'package:flutter/material.dart' as mate;
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ms_material_color/ms_material_color.dart';
import 'package:one_market/pages/dashboard/view.dart';

import 'package:one_market/pages/login/view.dart';
import 'package:one_market/constants/constants_and_imports.dart';
import 'package:one_market/pages/members/logic.dart';
import 'package:one_market/pages/navigation/view.dart';

import 'pages/login/logic.dart';
import 'pages/members/all_members/logic.dart';

void main() {
  runApp(MyApp());

  doWhenWindowReady(() {
    final win = appWindow;
    win.minSize = Size(1010, 645);
    win.size = Size(1010, 645);
    win.alignment = Alignment.center;
    win.title = strings.app_title;
    win.show();
  });
}

class MyApp extends StatelessWidget {


  MyApp({Key? key}) : super(key: key);

  // AcrylicEffect effect = AcrylicEffect.acrylic;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: mate.ThemeData(
        primaryColor: colors.primary_color,
        primarySwatch: MsMaterialColor(0xff35385D),
      ),
      home: FluentApp(

        initialRoute: PageRoutes.chooseScreen,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case "/chooseScreen":
              return FluentPageRoute(
                builder: (context) => MyHomePage(title:""),
              );
            case "/login":
              return FluentPageRoute(
                builder: (context) => LoginPage(),
              );
              case "/navigation":
              return FluentPageRoute(
                builder: (context) => NavigationPage(),
              );
          }
        },
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            brightness: Brightness.light,
            uncheckedColor: colors.primary_color,
            tooltipTheme: TooltipThemeData(
              decoration: BoxDecoration(color: colors.primary_color),
              textStyle: GoogleFonts.rubik(
                fontSize: 12,
                color: colors.primarydark_color,
                fontWeight: FontWeight.normal,
              ),
            ),
            micaBackgroundColor: colors.primarydark_color,
            navigationPaneTheme: NavigationPaneThemeData(
              backgroundColor: colors.primarydark_color,
              iconPadding: EdgeInsets.all(8),
              animationCurve: Curves.bounceInOut,
              highlightColor: colors.primary_color,
              animationDuration: Duration(
                milliseconds: 1000,
              ),
              tileColor: ButtonState.all(colors.primarydark_color),
            ),
            scaffoldBackgroundColor: colors.primary_color,
            cardColor: colors.primarywhite_color,
            inactiveColor: colors.textfieldback_color,
            iconTheme: IconThemeData(color: Colors.white, size: 20),
            typography: Typography.raw(
                bodyLarge: GoogleFonts.rubik(
                  fontSize: 25,
                  color: colors.primarydark_color,
                  // fontWeight: FontWeight.bold,
                ),
                display: GoogleFonts.rubik(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),bodyStrong: GoogleFonts.rubik(
              fontSize: 17,
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
                subtitle: GoogleFonts.rubik(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
                title: GoogleFonts.rubik(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                titleLarge: GoogleFonts.rubik(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
                body: GoogleFonts.rubik(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
                caption: GoogleFonts.rubik(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                )),
            visualDensity: VisualDensity.standard,
            focusTheme: FocusThemeData(
              glowFactor: is10footScreen() ? 2.0 : 0.0,
            ),
            // navigationPaneTheme:
            //     NavigationPaneThemeData(backgroundColor: Colors.teal),

            acrylicBackgroundColor: Color(0xff35385D)),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          visualDensity: VisualDensity.standard,
          focusTheme: FocusThemeData(
              glowFactor: is10footScreen() ? 2.0 : 0.0,
              glowColor: colors.primarydark_color),
          // navigationPaneTheme:
          //     NavigationPaneThemeData(backgroundColor:Colors.transparent,animationDuration: Duration(seconds: 1)),
          //
        ),
        themeMode: ThemeMode.light,

      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  final logic = Get.put(LoginLogic());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }
  @override
  Widget build(BuildContext context) {
    return mate.Scaffold(
      body: FutureBuilder(future: logic.chooseScreen(),
        builder: (context,snapshot) {
          if (snapshot.hasData == true) {
            if (snapshot.data == true) {
              return NavigationPage();
            } else {
              return LoginPage();
            }
          }
          else   if (snapshot.data == null)  {
            return LoginPage();

          }

         else {
          return    mate.Scaffold(
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        mate.CircularProgressIndicator(),
                      ],
                    ),
                  ],
                ),
              );
            }
          }
      ),
    );
  }
}
