import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class loaderProgress2 extends StatefulWidget {
  const loaderProgress2({Key? key}) : super(key: key);

  @override
  _loaderProgress2State createState() => _loaderProgress2State();
}

class _loaderProgress2State extends State<loaderProgress2> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(height: 50, width: 150,
      child: SpinKitThreeBounce(
        color: Colors.white,
        size: 50.0,
      )
    );;
  }
}
