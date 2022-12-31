import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';
import 'package:flutter/material.dart' as mate;
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ms_material_color/ms_material_color.dart';

import 'package:one_market/pages/login/view.dart';
import 'package:one_market/constants/constants_and_imports.dart';
import 'package:one_market/pages/members/logic.dart';
import 'package:one_market/pages/navigation/view.dart';

import 'pages/members/all_members/logic.dart';

void main() {
  runApp(MyApp());

  doWhenWindowReady(() {
    final win = appWindow;
    win.minSize = Size(810, 545);
    win.size = Size(955, 545);
    win.alignment = Alignment.center;
    win.title = strings.app_title;
    win.show();
  });
}

class MyApp extends StatelessWidget {
  final logic = Get.put(All_membersLogic());

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
        initialRoute: PageRoutes.login,
        onGenerateRoute: (settings) {
          switch (settings.name) {
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
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}
