import 'dart:io';

import 'package:get/get.dart';


enum SetState{
  loading,
loaded,
error
}
enum SetConnectivityState{
  internet,
  nointernet,
  error
}
 class AppState extends GetxController{

  var setstate=SetState.loaded.obs;
  var setConnectivityState=SetConnectivityState.nointernet.obs;
  Future<bool> get ishasinternet async{

      try {
        final result = await InternetAddress.lookup('google.com');
        final result1 = await InternetAddress.lookup('facebook.com');
        final result0 = await InternetAddress.lookup('youtube.com');
        if (result.isNotEmpty && result[0].rawAddress.isNotEmpty||result1.isNotEmpty && result1[0].rawAddress.isNotEmpty||result0.isNotEmpty && result0[0].rawAddress.isNotEmpty) {
          print('connected'+" with data");
          setToInternet();
          return true;

        }else{  print('not connected on if SocketException  nodata');
        setToError();
        setToNoInternet();

        return false;
        }
      } on SocketException catch (_) {
        print('not connected SocketException  nodata');
        setToError();
        setToNoInternet();

        return false;

      }

  }

  bool get isloaded{
    return setstate==SetState.loaded;
  }
  bool get isloading{
    return setstate==SetState.loading;
  }
  bool get iserror{
    return setstate==SetState.error;
  }
  setToInternet(){
    setConnectivityState.value=SetConnectivityState.internet;

  }
  setToNoInternet(){
    setConnectivityState.value=SetConnectivityState.nointernet;

  }


  setToLoaded(){
    setstate.value=SetState.loaded;

  }
  setToLoading(){
    setstate.value=SetState.loading;

  }
  setToError(){
    setstate.value=SetState.error;
 }

}
class AppStateService extends GetxService{

  var setstate=SetState.loaded.obs;
  var setConnectivityState=SetConnectivityState.nointernet.obs;
  Future<bool> get ishasinternet async{

    try {
      final result = await InternetAddress.lookup('google.com');
      final result1 = await InternetAddress.lookup('facebook.com');
      final result0 = await InternetAddress.lookup('youtube.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty||result1.isNotEmpty && result1[0].rawAddress.isNotEmpty||result0.isNotEmpty && result0[0].rawAddress.isNotEmpty) {
        print('connected'+" with data");
        setToInternet();
        return true;

      }else{  print('not connected on if SocketException  nodata');
      setToError();
      setToNoInternet();

      return false;
      }
    } on SocketException catch (_) {
      print('not connected SocketException  nodata');
      setToError();
      setToNoInternet();

      return false;

    }

  }

  bool get isloaded{
    return setstate==SetState.loaded;
  }
  bool get isloading{
    return setstate==SetState.loading;
  }
  bool get iserror{
    return setstate==SetState.error;
  }
  setToInternet(){
    setConnectivityState.value=SetConnectivityState.internet;

  }
  setToNoInternet(){
    setConnectivityState.value=SetConnectivityState.nointernet;

  }


  setToLoaded(){
    setstate.value=SetState.loaded;

  }
  setToLoading(){
    setstate.value=SetState.loading;

  }
  setToError(){
    setstate.value=SetState.error;
  }

}