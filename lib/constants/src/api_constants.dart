

// class Headers {
//   //Header Keys
//   static final String contentType = 'content-type';
//   static final String accept = 'accept';
//   static final String authorization = 'authorization';
//   static final String id = 'id';
//
// //Header values
//   static final String contentTypeValue = 'application/json';
//   static final String acceptValue = 'application/json';
//   static final String authorizationValue = 'Bearer ${getToken()}';
//   static final String userId = '${USER.id}';
//
//   static Map<String, String> registerHeader = {
//     contentType: contentTypeValue,
//     accept: acceptValue,
//   };
//   static Map<String, String> loginHeader = {
//     accept: acceptValue,
//   };
//
//   static Future<Map<String, String>> get fullHeader async {
//     String _authorizationValue = 'Bearer ${await getToken()}';
//     return {
//       contentType: contentTypeValue,
//       accept: acceptValue,
//       authorization: _authorizationValue,
//     };
//   }
//
//   static Future<Map<String, String>> get uploadHeader async {
//     String _authorizationValue = 'Bearer ${await getToken()}';
//     return {
//       contentType: 'multipart/form-data',
//       accept: acceptValue,
//       authorization: _authorizationValue,
//     };
//   }
//
//   static Map<String, String> fetchCartegoriesgroupedWithsubcategoriesHeader = {
//     contentType: contentTypeValue,
//     accept: acceptValue,
//   };
//   static Future<Map<String, String>> get updatePasswordHeader async {
//     String _authorizationValue = 'Bearer ${await getToken()}';
//     return {
//       contentType: contentTypeValue,
//       accept: acceptValue,
//       authorization: _authorizationValue,
//     };
//   }
//
//   static Map<String, String> forgotPasswordHeader = {
//     contentType: contentTypeValue,
//     accept: acceptValue,
//   };
//
//   static Future<Map<String, String>> get redeemCouponHeader async {
//     String _authorizationValue = 'Bearer ${await getToken()}';
//
//     return {
//       contentType: contentTypeValue,
//       accept: acceptValue,
//       authorization: _authorizationValue,
//     };
//   }
//
//   static Future<Map<String, String>> get submitHeader async {
//     String _authorizationValue = 'Bearer ${await getToken()}';
//     return {
//       contentType: contentTypeValue,
//       accept: acceptValue,
//       authorization: _authorizationValue,
//     };
//   }
//
//   static Future<Map<String, String>> get rateProductHeader async {
//     String _authorizationValue = 'Bearer ${await getToken()}';
//
//     return {
//       contentType: contentTypeValue,
//       accept: acceptValue,
//       authorization: _authorizationValue,
//     };
//   }
//
//   static Map<String, String> fetchStarsHeader = {
//     contentType: contentTypeValue,
//     accept: acceptValue,
//   };
//   static Map<String, String> fetchReviewHeader = {
//     contentType: contentTypeValue,
//     accept: acceptValue,
//   };
//
//   static Future<Map<String, String>> get singleAddressHeader async {
//     String _authorizationValue = 'Bearer ${await getToken()}';
//     return {
//       contentType: contentTypeValue,
//       accept: acceptValue,
//       authorization: _authorizationValue,
//       id: id,
//     };
//   }
//
//   static Future<Map<String, String>> get singleContact async {
//     String _authorizationValue = 'Bearer ${await getToken()}';
//     FetchContacts fetchContacts = FetchContacts();
//
//     return {
//       contentType: contentTypeValue,
//       accept: acceptValue,
//       authorization: _authorizationValue,
//       id: '${fetchContacts.id}',
//     };
//   }
//
//   //recent spending headers
//   static   Future<Map<String, String>>  get recentSpendingHeader async{
//     String _authorizationValue= 'Bearer ${await getToken()}';
//     print("my token is $_authorizationValue");
//     return {
//       contentType: contentTypeValue,
//       accept: acceptValue,
//       authorization: _authorizationValue,
//     };
//   }
//   //recent fiinancial points headers
//   static   Future<Map<String, String>>  get financialpointHeader async{
//     String _authorizationValue= 'Bearer ${await getToken()}';
//
//     return {
//       contentType: contentTypeValue,
//       accept: acceptValue,
//       authorization: _authorizationValue,
//     };
//   }
//
//
// }

class SharedPrefKeys {
  static const String rememberMe = "remembereMe";
  static const String token = "token";
  static const String news = "news";
  static const String email = "email";
  static const String onBoarding = "onBoarding";
}

class Routes {
  // https://test.solemn.tech/user/signup
  static const String baseUrl = 'http://test.solemn.tech/';
  //signup
  static const String registerURL = '${baseUrl}user/signup';
  //signin
  static const String loginURL = '${baseUrl}user/login';
  //forgetpass

  static const String forgotpasswordurl = '${baseUrl}mail/forgetpass';

  //list of station

  static const String liststationurl = '${baseUrl}station';

  //list of tanks
  // http://test.solemn.tech/lasttankdata?id=37
  static const String tankurl = '${baseUrl}lasttankdata?id=';

  //list of probetank
  // https://test.solemn.tech/tankdip?id=37

  static const String probeTankurl = '${baseUrl}tankdip?id=';
  //list of region
  // https://test.solemn.tech/regions
  static const String listRegionsurl = '${baseUrl}regions';
  //list of booking

  static const String bookingurl = '${baseUrl}booking';
// http://test.solemn.tech/sanctions
//   http://test.solemn.tech/station
  //list of sanction

  static const String sanctionurl = '${baseUrl}sanctions';

  // https://test.solemn.tech/totalfuel
  static const String graphstateurl = '${baseUrl}totalfuel';
  // https://test.solemn.tech/productsbyregion
  static const String graphregionurl = '${baseUrl}productsbyregion';

}
