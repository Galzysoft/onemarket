import 'dart:convert';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';

class ErrorHandlers {
  ErrorHandlers(BuildContext context,
      {required String message, dynamic messageServer, required bool isError,bool? ismessage}) {
    showMessage(context,
        message: message,
        messageServer: messageServer,ismessage:ismessage ,
        isError: isError);
  }

  static showMessage(BuildContext context,
      {required String message, dynamic? messageServer, required bool isError,bool? ismessage}) {
 String bigMessage="";
 print('messageServer $messageServer');
    if (ismessage !=true&& (messageServer != null||messageServer != "null")) {
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
    }
     else{ return Get.showSnackbar(GetSnackBar(
      backgroundColor: isError == true ? Colors.red : Colors.green,
      message:  messageServer == "null" || messageServer == null||messageServer.toString().isEmpty
          ? message
          : messageServer.toString(),

      snackPosition: SnackPosition.TOP,duration: Duration(seconds: 5),
    ));}



    // showCustomSnackBar(messageServer=="null"||message.isEmpty?message:messageServer, bannerColor: isError?Colors.red:Colors.green);
  }
}
