import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'state.dart';

class DefaultDatePickerLogic extends GetxController {
  final DefaultDatePickerState state = DefaultDatePickerState();

 var selectedDate="".obs;
  String showCalender(BuildContext context) {
    DateTime initialDate = DateTime.now();
    DateTime firstDate = DateTime(1920);
    DateTime lastDate = DateTime(2100);
    var dayplusone = DateTime.now().add(Duration(days: 1));

    showDatePicker(
        context: context,
        confirmText:"Select Date",
        cancelText: "Cancel",
        initialDate: initialDate,
        firstDate: firstDate,
        lastDate: lastDate)
        .then((value) {
      print(dayplusone);
      if (value != null) {
        selectedDate.value = DateFormat("EEE,dd MMM, yyyy").format(value).toString();
      } else {
        selectedDate .value=
            DateFormat("EEE,dd MMM, yyyy").format(dayplusone).toString();
      }

    });

    return selectedDate.value;
  }


}
