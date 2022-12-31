import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart'as mate;
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:one_market/model/user.dart';
import 'package:one_market/pages/members/view.dart';
import 'package:one_market/utils/app_state.dart';
import'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../constants/constants_and_imports.dart';
import '../login/logic.dart';
import 'state.dart';

class MembersLogic extends AppState {

  set changeindex(int index) {
    selectedidex.value = index;
  }
  final MembersState state = MembersState();
  var selectedidex = 0.obs;  final Rx<File?> image = (null as File?).obs;

  TextEditingController firstname= new TextEditingController();
  TextEditingController middlename= new TextEditingController();
  TextEditingController lastname= new TextEditingController();
  TextEditingController phonenumber= new TextEditingController();
  TextEditingController email= new TextEditingController();
  TextEditingController username= new TextEditingController();
  var nationality= (null as String).obs;

  TextEditingController maritalstatus= new TextEditingController();
  TextEditingController dateofbirth= new TextEditingController();
  TextEditingController password= new TextEditingController();
  TextEditingController confirmpassword= new TextEditingController();
var sex="".obs;
var maritalStatus="".obs;
  var selectedDate2="".obs;
var selectedDate=(DateTime.now()).obs;



  Future<void> doRegister(BuildContext context) async {
    if (firstname.text.isEmpty) {
      ErrorHandlers(context,
          isError: true, message: "Firstname field is empty");
    }
    else if (lastname.text.isEmpty) {
      ErrorHandlers(context,isError: true, message: "Last name field is empty");
    }
    else if (phonenumber.text.isEmpty) {
      ErrorHandlers(context,isError: true, message: "Phone number field is empty");
    }
    else if (email.text.isEmpty) {
      ErrorHandlers(context,isError: true, message: "Email address field  is empty");
    }
    else if (!email.text.isEmail) {
      ErrorHandlers(context,isError: true, message: "Email address entered is not valid");
    }
    else if (username.text.isEmpty) {
      ErrorHandlers(context,isError: true, message: "Username field is empty");
    }
    else if (nationality.isEmpty) {
      ErrorHandlers(context,isError: true, message: "Nationality field is empty");
    }
    else if (sex.isEmpty) {
      ErrorHandlers(context,isError: true, message: "Gender field is empty");
    }
    else if (maritalStatus.isEmpty) {
      ErrorHandlers(context,isError: true, message: "Marital status field is empty");
    }   else if (selectedDate.value.toString().isEmpty||selectedDate.value==null) {
      ErrorHandlers(context,isError: true, message: "Selected Date field is empty");
    }
    else if (password.text.isEmpty) {
      ErrorHandlers(context,
          isError: true, message: "Password field is empty");
    }   else if (confirmpassword.text.isEmpty) {
      ErrorHandlers(context,
          isError: true, message: "Confirm Password field is empty");
    }  else if (confirmpassword.text!=password.text) {
      ErrorHandlers(context,
          isError: true, message: "Mismatch Password field");
    }


    else {
      if (image.value == null) {
        setToLoading();

        print("clicked me${isloading}");

        if (await ishasinternet) {
          await registerWithOutImage(context);

          setToLoaded();
          print("clicked me2 ${isloading}");
        } else {
          setToError();
          ErrorHandlers(Get.context!,message:"No internet connection",isError: true );

          print("no internet checker ");
        }
      } else {
        if (await ishasinternet) {
          await registerWithImage(context);
// await trywithpicture();

          setToLoaded();
          print("clicked me2 ${isloading}");
        } else {
          setToError();
          ErrorHandlers(Get.context!,message:"No internet connection",isError: true );


          print("no internet checker ");
        }
      }
    }
  }



  Future registerWithImage(BuildContext context) async {
    setToLoading();


    Map<String, String> formData = {
      'firstname': firstname.text,
      'username': username.text,
      'email':email.text,
      'phone_number': phonenumber.text,
      'password': password.text,
      'nationality':nationality.value,
      'sex': sex.value,
      'lastname': lastname.text,
      'marital_status':maritalStatus.value,
      'dob': selectedDate.value.toString(),
      'password_confirmation': confirmpassword.text,


    };

// Create a MultipartFile to represent the image
    http.MultipartFile imageFile = await http.MultipartFile.fromPath(
      'profile_pic',
      image.value!.path,
      filename: "profile_pic",
    );

// Create a MultipartRequest to send the form data and image
    http.MultipartRequest request = http.MultipartRequest(
      'POST',
      Uri.parse(Routes.membersURL),
    );
    print('Headers.HeaderWithToken ${Headers.HeaderWithToken}');
    request.headers.addAll(Headers.HeaderWithToken);

// Add the form data and image to the request
    request.fields.addAll(formData);
    request.files.add(imageFile);

// Send the request
    var streamedResponse = await request.send();
    var response = await http.Response.fromStream(streamedResponse);
    final result = jsonDecode(response.body) as Map<String, dynamic>;
    print("message $result");
// Check the status code of the response
    if (response.statusCode==200) {
      // The request was successful
      print('sucesss  ${response.body}');
      ErrorHandlers(
        context,
          isError: false,
          message: "User Registered Successfully",
          messageServer:  jsonDecode(response.body)["errors"]
          );

      clearFields();
      setToLoaded();
      // Get.toNamed(RoutesPage.emailVerificationPage);
    } else {
      print('sucesss is error  ${response}');
      setToError();
      ErrorHandlers(context,
          isError: true,
          message: "User Not Registered",messageServer:  jsonDecode(response.body)["errors"]
          );


    }
  }

  Future registerWithOutImage(BuildContext context) async {
    setToLoading();

    setToLoading();
    Map<String, String> formData = {
      'firstname': firstname.text,
      'username': username.text,
      'email':email.text,
      'phone_number': phonenumber.text,
      'password': password.text,
      'nationality':nationality.value,
      'sex': sex.value,
      'lastname': lastname.text,
      'marital_status':maritalStatus.value,
      'dob': selectedDate.value.toString(),
      'password_confirmation': confirmpassword.text,


    };

// Create a MultipartFile to represent the image


// Create a MultipartRequest to send the form data and image
    http.MultipartRequest request = http.MultipartRequest(
      'POST',
      Uri.parse(Routes.membersURL),
    );
    print('Headers.HeaderWithToken ${Headers.HeaderWithToken}');
    request.headers.addAll(Headers.HeaderWithToken);
// Add the form data and image to the request
    request.fields.addAll(formData);


// Send the request
    var streamedResponse = await request.send();
    var response = await http.Response.fromStream(streamedResponse);
    final result = jsonDecode(response.body) as Map<String, dynamic>;
    print("message $result");
// Check the status code of the response
    if (response.statusCode==200) {
      // The request was successful
      print('sucesss  ${response.body}');
      ErrorHandlers(
        context,
          isError: false,
          message: "User Registered Successfully",
          );

      setToLoaded();
      // Get.toNamed(RoutesPage.emailVerificationPage);
    } else {
      print('error statusCode ${response.statusCode}');

      ErrorHandlers(context,
          isError: true,
          message: "User Not Registered",messageServer:  jsonDecode(response.body)["errors"]
      );

      setToError();
    }
  }
void clearFields(){
   firstname.text="";
 username.text="";
 email.text="";
 phonenumber.text="";
 password.text="";
  nationality.value="";
  sex.value="";
lastname.text="";

maritalStatus.value="";
 selectedDate.value.toString();
confirmpassword.text="";
}
  Future pickImage() async {
    try {

      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'png', ],
      );

      if (result == null) return;
      PlatformFile file = result.files.first;
      final imageTemp = File(file.path!);

      this.image!.value = imageTemp;

      print(imageTemp);
    } on PlatformException catch (e) {
      print('Failed tp pick Image: $e');
    }
  }

Widget uploadImage(BuildContext context){
    return Obx(() {
      return SizedBox(height: 100,width: 100,
        child: Card(
            backgroundColor: FluentTheme.of(context).inactiveColor,
            padding: EdgeInsets.all(10),
            child: mate.InkWell(
                onTap: () {
                pickImage();
                },
                child: Stack(
                  children: [
                    Container(
                      child: (image.value != null)
                          ? Image.file(
                        height: double.infinity,width: double.infinity,

                        image!.value!,
                        fit: BoxFit.fill,
                      )
                          : Image.asset(
                        height: double.infinity,width: double.infinity,
                        assets.insert,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child:image.value == null?SizedBox(): CircleAvatar(radius: 15,
                        backgroundColor: Colors.green,
                        child:Icon( FluentIcons.add,color: Colors.white,size: 12),
                      ),
                    )
                  ],
                ))),
      );
    });
}
}
