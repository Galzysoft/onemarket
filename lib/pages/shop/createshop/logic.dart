import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


import '../../../constants/constants_and_imports.dart';
import 'state.dart';

class CreateShopLogic extends GetxController {
  final CreateshopState state = CreateshopState();
var  member=''.obs;
var  guarantor=''.obs;
  TextEditingController shopnumber= new TextEditingController();
  TextEditingController shopAdress= new TextEditingController();
  TextEditingController howDidYouGetTheShop= new TextEditingController();
  TextEditingController phonenumber= new TextEditingController();
  TextEditingController companyname= new TextEditingController();
  TextEditingController companyaddress= new TextEditingController();
  TextEditingController nationality= new TextEditingController();
  TextEditingController sex= new TextEditingController();
  TextEditingController maritalstatus= new TextEditingController();
  TextEditingController dateofbirth= new TextEditingController();
  TextEditingController password= new TextEditingController();
  TextEditingController confirmpassword= new TextEditingController();
  final Rx<File?> image = (null as File?).obs;
  final Rx<File?> doc = (null as File?).obs;
  final Rx<File?> certDoc = (null as File?).obs;


  Future pickImage() async {
    try {

      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'png', ],
      );

      if (result == null) {
        // return;
      }
     else {
        PlatformFile file = result.files.first;
        final imageTemp = File(file.path!);

        this.image!.value = imageTemp;

        print(imageTemp);
      }
    } on PlatformException catch (e) {
      print('Failed tp pick Image: $e');
    }
  }
  Future pickDoc() async {
    try {

      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'png', ],
      );

      if (result == null) {
        // return;
      }
     else {
        PlatformFile file = result.files.first;
        final imageTemp = File(file.path!);

        this.doc!.value = imageTemp;

        print(imageTemp);
      }
    } on PlatformException catch (e) {
      print('Failed tp pick Image: $e');
    }
  }
  Future pickCertDoc() async {
    try {

      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'png', ],
      );

      if (result == null) {
        // return;
      }
     else {
        PlatformFile file = result.files.first;
        final imageTemp = File(file.path!);

        this.certDoc!.value = imageTemp;

        print(imageTemp);
      }
    } on PlatformException catch (e) {
      print('Failed tp pick Image: $e');
    }
  }

}
