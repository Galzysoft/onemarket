

import 'package:get/get.dart';
import 'package:one_market/pages/login/logic.dart';

class Headers {
  //Header Keys
  static final String contentType = 'content-type';
  static final String accept = 'Accept';
  static final String authorization = 'Authorization';
  static final String id = 'id';
  static  final logicuser = Get.put(LoginLogic());


//Header values
  static final String contentTypeValue = 'application/json';
  static final  String tokenValue=logicuser.userModel.data!.token!;

  static final String acceptValue = 'application/json';
  // static final String authorizationValue = 'Bearer ${getToken()}';
  // static final String userId = '${USER.id}';

  static Map<String, String> registerHeader = {
    contentType: contentTypeValue,
    accept: acceptValue,

  };  static Map<String, String> HeaderWithToken = {
    contentType: contentTypeValue,
    accept: acceptValue,
    authorization:"Bearer "+tokenValue

  };
  static Map<String, String> loginHeader = {
    contentType: contentTypeValue,
    accept: acceptValue,
  };

  // static Future<Map<String, String>> get fullHeader async {
  //   String _authorizationValue = 'Bearer ${await getToken()}';
  //   return {
  //     contentType: contentTypeValue,
  //     accept: acceptValue,
  //     authorization: _authorizationValue,
  //   };
  // }
  //
  // static Future<Map<String, String>> get uploadHeader async {
  //   String _authorizationValue = 'Bearer ${await getToken()}';
  //   return {
  //     contentType: 'multipart/form-data',
  //     accept: acceptValue,
  //     authorization: _authorizationValue,
  //   };
  // }
  //
  // static Map<String, String> fetchCartegoriesgroupedWithsubcategoriesHeader = {
  //   contentType: contentTypeValue,
  //   accept: acceptValue,
  // };
  // static Future<Map<String, String>> get updatePasswordHeader async {
  //   String _authorizationValue = 'Bearer ${await getToken()}';
  //   return {
  //     contentType: contentTypeValue,
  //     accept: acceptValue,
  //     authorization: _authorizationValue,
  //   };
  // }
  //
  // static Map<String, String> forgotPasswordHeader = {
  //   contentType: contentTypeValue,
  //   accept: acceptValue,
  // };
  //
  // static Future<Map<String, String>> get redeemCouponHeader async {
  //   String _authorizationValue = 'Bearer ${await getToken()}';
  //
  //   return {
  //     contentType: contentTypeValue,
  //     accept: acceptValue,
  //     authorization: _authorizationValue,
  //   };
  // }
  //
  // static Future<Map<String, String>> get submitHeader async {
  //   String _authorizationValue = 'Bearer ${await getToken()}';
  //   return {
  //     contentType: contentTypeValue,
  //     accept: acceptValue,
  //     authorization: _authorizationValue,
  //   };
  // }
  //
  // static Future<Map<String, String>> get rateProductHeader async {
  //   String _authorizationValue = 'Bearer ${await getToken()}';
  //
  //   return {
  //     contentType: contentTypeValue,
  //     accept: acceptValue,
  //     authorization: _authorizationValue,
  //   };
  // }
  //
  // static Map<String, String> fetchStarsHeader = {
  //   contentType: contentTypeValue,
  //   accept: acceptValue,
  // };
  // static Map<String, String> fetchReviewHeader = {
  //   contentType: contentTypeValue,
  //   accept: acceptValue,
  // };
  //
  // static Future<Map<String, String>> get singleAddressHeader async {
  //   String _authorizationValue = 'Bearer ${await getToken()}';
  //   return {
  //     contentType: contentTypeValue,
  //     accept: acceptValue,
  //     authorization: _authorizationValue,
  //     id: id,
  //   };
  // }
  //
  // static Future<Map<String, String>> get singleContact async {
  //   String _authorizationValue = 'Bearer ${await getToken()}';
  //   FetchContacts fetchContacts = FetchContacts();
  //
  //   return {
  //     contentType: contentTypeValue,
  //     accept: acceptValue,
  //     authorization: _authorizationValue,
  //     id: '${fetchContacts.id}',
  //   };
  // }
  //
  // //recent spending headers
  // static   Future<Map<String, String>>  get recentSpendingHeader async{
  //   String _authorizationValue= 'Bearer ${await getToken()}';
  //   print("my token is $_authorizationValue");
  //   return {
  //     contentType: contentTypeValue,
  //     accept: acceptValue,
  //     authorization: _authorizationValue,
  //   };
  // }
  // //recent fiinancial points headers
  // static   Future<Map<String, String>>  get financialpointHeader async{
  //   String _authorizationValue= 'Bearer ${await getToken()}';
  //
  //   return {
  //     contentType: contentTypeValue,
  //     accept: acceptValue,
  //     authorization: _authorizationValue,
  //   };
  // }


}

class SharedPrefKeys {
  static const String rememberMe = "remembereMe";
  static const String user = "user";
  static const String token = "token";
  static const String news = "news";
  static const String email = "email";
  static const String onBoarding = "onBoarding";
}

class Routes {

  static const String baseUrl = 'https://onemarket.xnodde.com/';
    //loginURL
  static const String loginURL = '${baseUrl}api/v1/login';
  //membersURL
  static const String membersURL = '${baseUrl}api/v1/register';

  // https://test.solemn.tech/totalfuel
  static const String graphstateurl = '${baseUrl}totalfuel';
  // https://test.solemn.tech/productsbyregion
  static const String graphregionurl = '${baseUrl}productsbyregion';

}
