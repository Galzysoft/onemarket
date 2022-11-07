import 'package:get/get.dart';

import '../../constants/constants_and_imports.dart';
import 'state.dart';

class FeesLogic extends GetxController {
  final FeesState state = FeesState();
  TextEditingController feeDescription= new TextEditingController();
  TextEditingController middlename= new TextEditingController();
  TextEditingController controller= new TextEditingController();
  TextEditingController phonenumber= new TextEditingController();
  TextEditingController email= new TextEditingController();
  TextEditingController feeName= new TextEditingController();
  TextEditingController amount= new TextEditingController();
  TextEditingController sex= new TextEditingController();
  TextEditingController maritalstatus= new TextEditingController();
  TextEditingController dateofbirth= new TextEditingController();
  TextEditingController duration= new TextEditingController();
  TextEditingController confirmpassword= new TextEditingController();
  var currentIndex = 1.obs;
var owner=false.obs;
  var attachee=false.obs;
  var isallfee=false.obs;
  var taskforce=false.obs;
  var apprientice=false.obs;
  var worker=false.obs;
  final List<String> radioButtons = <String>[
    'Yes',
    'No',

  ];
}
