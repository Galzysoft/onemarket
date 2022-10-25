import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';

import '../../../../constants/constants_and_imports.dart';
import 'state.dart';

class Statisticschart2Logic extends GetxController {
  final Statisticschart2State state = Statisticschart2State();

  List<BarChartGroupData> allstation = [];

  List<BarChartGroupData> tanks = [];
  Future<List<BarChartGroupData>> items(
      bool isall,) async {
    allstation = [makeGroupData(
      x_position: 0,
      Diesiel_value: 20000,
      Petrol_value:  22000,
      kerosene_value: 18000,
    ),makeGroupData(
      x_position: 1,
      Diesiel_value: 20000,
      Petrol_value:  20000+500,
      kerosene_value: 20072,
    ),makeGroupData(
      x_position: 2,
      Diesiel_value: 20000,
      Petrol_value:  20000+500,
      kerosene_value: 20002,
    ),makeGroupData(
      x_position: 3,
      Diesiel_value: 20000,
      Petrol_value:  20000+500,
      kerosene_value: 19002,
    ),makeGroupData(
      x_position: 4,
      Diesiel_value: 12000,
      Petrol_value:  20000+500,
      kerosene_value: 17002,
    ),];

    tanks = [
      makeGroupData(
        x_position: 0,
        Diesiel_value: 0,
        Petrol_value:  20000+500,
        kerosene_value: 0,
      ),makeGroupData(
        x_position: 1,
        Diesiel_value: 0,
        Petrol_value:  20000+500,
        kerosene_value: 0,
      ),makeGroupData(
        x_position: 2,
        Diesiel_value: 0,
        Petrol_value:  0,
        kerosene_value: 18000+500,
      ),makeGroupData(
        x_position: 3,
        Diesiel_value: 21000,
        Petrol_value:  0,
        kerosene_value: 0,
      ),makeGroupData(
        x_position: 4,
        Diesiel_value: 20000,
        Petrol_value:  0,
        kerosene_value: 0,
      ),];


    return isall?allstation:tanks;

  }

  BarChartGroupData makeGroupData(
      {int? x_position,
        double? Diesiel_value,
        double? Petrol_value,
        double? kerosene_value,
      }) {
     double width1 =15;
    return BarChartGroupData(barsSpace: 4, x: x_position!, barRods: [
      //diesel

      BarChartRodData(
        color: Diesiel_value==0?Colors.transparent:Colors.red,

        width: width1,
        toY: Diesiel_value!,
      ),
      //petrol

      BarChartRodData(
        toY: Petrol_value!,
        color:Petrol_value==0?Colors.transparent: Colors.yellow,
        width: width1,
      ),
      //kerosene
      BarChartRodData(
        toY: kerosene_value!,
        color: kerosene_value==0?Colors.transparent:Colors.green,
        width: width1,
      ),
    ]);
  }

}
