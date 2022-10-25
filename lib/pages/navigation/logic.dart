import 'package:get/get.dart';
import 'package:one_market/pages/dashboard/view.dart';
import 'package:one_market/pages/fees/view.dart';
import 'package:one_market/pages/members/view.dart';
import 'package:one_market/pages/shop/view.dart';
import 'package:one_market/pages/task_force/view.dart';

import '../../constants/constants_and_imports.dart';
import '../../utils/navigationKeys.dart';
import 'state.dart';

class NavigationLogic extends GetxController {
  final NavigationState state = NavigationState();
  var selectedidex = 0.obs;

  List pages = [
  Navigator(key:dashNavigator ,
  onGenerateRoute: (settings) => FluentPageRoute(
  builder: (context) =>  DashboardPage(),
  ),
  ),


    Navigator(key:memberNavigator ,
      onGenerateRoute: (settings) => FluentPageRoute(
        builder: (context) =>   MembersPage(),
      ),
    ),

    Navigator(key:shopNavigator ,
      onGenerateRoute: (settings) => FluentPageRoute(
        builder: (context) =>   ShopPage(),
      ),
    ),     Navigator(key:feeNavigator ,
      onGenerateRoute: (settings) => FluentPageRoute(
        builder: (context) =>   FeesPage(),
      ),
    ),   Navigator(key:taskForceNavigator ,
  onGenerateRoute: (settings) => FluentPageRoute(
  builder: (context) =>   TaskForcePage(),
  ),
  ),    SizedBox(),
  ];

  set changeindex(int index) {
    selectedidex.value = index;
  }
}
