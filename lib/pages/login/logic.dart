import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';

import 'state.dart';

class LoginLogic extends GetxController {
  final LoginState state = LoginState();
  var index=0.obs;
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
  void changeIndex(int newIndex){
    index.value=newIndex;
  }
}
