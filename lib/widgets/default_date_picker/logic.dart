import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'state.dart';

class DefaultDatePickerLogic extends GetxController {
  final DefaultDatePickerState state = DefaultDatePickerState();



}

Future<DateTime> showCalender(BuildContext context,) async{
  DateTime initialDate = DateTime.now();
  DateTime firstDate = DateTime(1920);
  DateTime lastDate = DateTime(2100);
  var dayplusone = DateTime.now().add(Duration(days: 1));
  DateTime selectedDate;
 DateTime? value=await showDatePicker(
      context: context,
      confirmText:"Select Date",
      cancelText: "Cancel",
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate);
  if (value != null) {

    selectedDate =
        value;
    print('selectedDate $selectedDate');
    return value;
  } else {
    selectedDate=dayplusone;

    return dayplusone;
    // selectedDate = DateFormat("EEE,dd MMM, yyyy").format(value).toString();

  }
  print('selectedDate $selectedDate');

}
