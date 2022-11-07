import 'package:get/get.dart';
import 'package:one_market/pages/members/view.dart';

import '../../constants/constants_and_imports.dart';
import 'state.dart';

class MembersLogic extends GetxController {
  set changeindex(int index) {
    selectedidex.value = index;
  }
  final MembersState state = MembersState();
  var selectedidex = 0.obs;
  TextEditingController firstname= new TextEditingController();
  TextEditingController middlename= new TextEditingController();
  TextEditingController lastname= new TextEditingController();
  TextEditingController phonenumber= new TextEditingController();
  TextEditingController email= new TextEditingController();
  TextEditingController username= new TextEditingController();
  TextEditingController nationality= new TextEditingController();
  TextEditingController sex= new TextEditingController();
  TextEditingController maritalstatus= new TextEditingController();
  TextEditingController dateofbirth= new TextEditingController();
  TextEditingController password= new TextEditingController();
  TextEditingController confirmpassword= new TextEditingController();

}
