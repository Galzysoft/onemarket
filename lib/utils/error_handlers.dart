import 'dart:convert';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';

class ErrorHandlers {
  ErrorHandlers(BuildContext context,
      {required String message, dynamic messageServer, required bool isError}) {
    showMessage(context,
        message: message,
        messageServer: messageServer,
        isError: isError);
  }

  static showMessage(BuildContext context,
      {required String message, Map<String, dynamic>? messageServer, required bool isError}) {
 String bigMessage="";
 print('messageServer $messageServer');
    if (messageServer != null||messageServer != "null") {
      messageServer?.forEach((key, value) {
        bigMessage+=" ${value[0].toString()},";


      });
      return Get.showSnackbar(GetSnackBar(
        backgroundColor: isError == true ? Colors.red : Colors.green,
        message: messageServer == "null" || messageServer == null
            ? message
            : bigMessage,
        snackPosition: SnackPosition.TOP,duration: Duration(seconds: 5),
      ));
    }else{ return Get.showSnackbar(GetSnackBar(
      backgroundColor: isError == true ? Colors.red : Colors.green,
      message:  message
         ,
      snackPosition: SnackPosition.TOP,duration: Duration(seconds: 5),
    ));}



    // showCustomSnackBar(messageServer=="null"||message.isEmpty?message:messageServer, bannerColor: isError?Colors.red:Colors.green);
  }
}
