import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart' as mate;

// import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_button/group_button.dart';
import 'package:intl/intl.dart';
import 'package:one_market/constants/constants_and_imports.dart';

import 'logic.dart';

class StatisticsChartPage extends StatelessWidget {
  final String chartname;

  StatisticsChartPage({super.key, required this.chartname});


  @override
  Widget build(BuildContext context) {


    Widget bottomTitleWidgets(double value, TitleMeta meta) {
      var style = FluentTheme
          .of(context)
          .typography
          .subtitle;
      Widget text;
      switch (value.toInt()) {
        case 2:
          text = Text('Sep', style: style);
          break;
        case 4:
          text = Text('Oct', style: style);
          break;
        case 6:
          text = Text('Dec', style: style);
          break;
        case 8:
          text = Text('Jan', style: style);
          break;
        default:
          text = Text('', style: style);
          break;
      }

      return Padding(child: text, padding: const EdgeInsets.only(top: 8.0));
    }

    Widget leftTitleWidgets(double value, TitleMeta meta, BuildContext context) {
      var style = FluentTheme
          .of(context)
          .typography
          .subtitle;
      String text;
      switch (value.toInt()) {
        case 1:
          text = '10K';
          break;
        case 3:
          text = '30k';
          break;
        case 5:
          text = '50k';
          break;
        case 7:
          text = '60k';
          break;
        case 9:
          text = '80k';
          break;
        case 10:
          text = '100k';
          break;
        default:
          return Container();
      }

      return Text(text, style: style, textAlign: TextAlign.left);
    }

    LineChartData mainData(BuildContext context) {
      return LineChartData(
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          drawHorizontalLine: true,
          horizontalInterval: 1,
          verticalInterval: 1,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: const Color(0xff71BDE8),
              strokeWidth: 1,
            );
          },
          getDrawingVerticalLine: (value) {
            return FlLine(
              color: const Color(0xff37434d),
              strokeWidth: 1,
            );
          },
        ),
        titlesData: FlTitlesData(
          show: true,
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 30,
              interval: 1,
              getTitlesWidget: bottomTitleWidgets,
            ),
          ),
          leftTitles: AxisTitles(
              sideTitles: SideTitles(
                  showTitles: true,

                  reservedSize: 40,
                  interval: 1,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    return Text(
                      " ${value >= 1000000 ? NumberFormat.compactCurrency(
                        decimalDigits: 2,
                        symbol:
                        '', // if you want to add currency symbol then pass that in this else leave it empty.
                      ).format(value) : value} L", style: FluentTheme
                        .of(context)
                        .typography
                        .subtitle,);
                  })),
        ),
        borderData: FlBorderData(
            show: true,
            border: Border.all(color: Colors.transparent, width: 1)),
        minX: 0,
        maxX: 11,
        minY: 0,
        maxY: 6,
        lineBarsData: [
          LineChartBarData(
            spots: const [
              FlSpot(0, 3),
              FlSpot(2.6, 2),
              FlSpot(4.9, 5),
              FlSpot(6.8, 3.1),
              FlSpot(8, 4),
              FlSpot(9.5, 3),
              FlSpot(11, 4),
            ],
            isCurved: true,
            color: Color(0xffed1e79),

            barWidth: 1 ,
            isStrokeCapRound: true,
            dotData: FlDotData(
              show: false,
            ),
            belowBarData: BarAreaData(
              show: true,
              color: Color(0xffed1e79) .withOpacity(0.1),

            ),
          ),
          LineChartBarData(
            spots: const [
              FlSpot(0, 3),
              FlSpot(1.4, 2),
              FlSpot(0.9, 4),
              FlSpot(5.8, 3.1),
              FlSpot(6, 4),
              FlSpot(9.5, 3),
              FlSpot(11, 5),
            ],
            isCurved: true,
            color: const Color(0xfff7931e),

            barWidth: 1 ,
            isStrokeCapRound: true,
            dotData: FlDotData(
              show: false,
            ),
            belowBarData: BarAreaData(
              show: true,
              color: const Color(0xfff7931e) .withOpacity(0.1),

            ),
          ),
          LineChartBarData(
            spots: const [
              FlSpot(0, 3),
              FlSpot(2.6, 2),
              FlSpot(4.9, 1),
              FlSpot(6.8, 3.1),
              FlSpot(8, 4),
              FlSpot(9.5, 3),
              FlSpot(11, 4),
            ],
            isCurved: true,
            color: colors. primarydark_color,

            barWidth: 1 ,
            isStrokeCapRound: true,
            dotData: FlDotData(
              show: false,
            ),
            belowBarData: BarAreaData(
              show: true, color: colors. primarydark_color .withOpacity(0.1),

            )
            ,
          )
          ,
        ]
        ,
      );
    }

    return Stack(
      children: <Widget>[
        mate.Material(
          elevation: 4,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          shadowColor: colors.primarydark_color,
          color: Colors.transparent,
          child: mate.Padding(
            padding: const EdgeInsets.only(left: 28.0,right: 28),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(children: [
                    Row(
                      children: [
                        Text(
                            chartname,
                            style: FluentTheme
                                .of(context)
                                .typography
                                .title
                        ),

                      ],
                    ),

                    Expanded(child: SizedBox()),
                  ],),
                ),
                Expanded(flex: 6,
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: 8.0, left: 8.0, bottom: 0),
                    child: LineChart(
                      mainData(context),
                    ),
                  ),
                ),
                Expanded(flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: 8.0, left: 8.0, bottom: 8),
                    child: Row(children: [
                      Expanded(flex: 2,
                        child: FittedBox(
                          child: Row(children: [
                            Row(
                              children: [
                                Text(
                                  "Reoccuring",
                                  style:  FluentTheme.of(context).typography.subtitle,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 12,
                                    height: 2,
                                    color: Colors.red,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Variable Cost",
                                  style: GoogleFonts.montserrat(
                                      textStyle: FluentTheme
                                          .of(context)
                                          .typography
                                          .subtitle),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 12,
                                    height: 2,
                                    color: Colors.yellow,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Miscellaneous",
                                  style: FluentTheme
                                      .of(context)
                                      .typography
                                      .subtitle,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 12,
                                    height: 2,
                                    color: Colors.green,
                                  ),
                                )
                              ],
                            ),
                          ],),
                        ),
                      ),

                      SizedBox(width: 10,),
                      Expanded(
                        child: FittedBox(
                          child: GroupButton(
                              controller: GroupButtonController(),
                              isRadio: true,
                              options: GroupButtonOptions(   spacing: 2,

                                groupingType: GroupingType.wrap,
                                direction: Axis.horizontal,
                                buttonHeight: 15,
                                buttonWidth: 17,
                                selectedTextStyle: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: colors
                                          .primarywhite_color,
                                    )),
                                unselectedTextStyle: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: colors.primarywhite_color,
                                    )),
                                selectedColor: colors.primarydark_color,
                                unselectedColor: colors.primary_color,
                                selectedBorderColor: Colors.transparent,
                                unselectedBorderColor: colors.primary_color,
                                borderRadius: BorderRadius.circular(3.0),
                                selectedShadow: const <BoxShadow>[
                                  BoxShadow(color: Colors.transparent)
                                ],
                                unselectedShadow: const <BoxShadow>[
                                  BoxShadow(color: Colors.transparent)
                                ],),

                              onSelected: (string,index, isSelected) =>
                                  debugPrint(
                                    '$index button is ${isSelected
                                        ? 'selected'
                                        : 'unselected'}',
                                  ),
                              buttons: const [
                                "W",
                                "M",
                                "6M",
                                "Y",
                                "5Y",
                              ],



                              enableDeselect: false,
                              maxSelected: 5
                          ),
                        ),
                      )
                    ],),
                  ),
                ),

              ],
            ),
          ),
        ),
      ],
    );

  }

  final logic = Get.put(StatisticsChartLogic());
  final state = Get
      .find<StatisticsChartLogic>()
      .state;
  List<Color> gradientColors = [
    const Color(0xffed1e79).withOpacity(0.1),
    const Color(0xffed1e79).withOpacity(0.1),
  ];
  List<Color> gradientColors1 = [
    colors.primarydark_color.withOpacity(0.1),
    colors.primarydark_color.withOpacity(0.1),
  ];
  List<Color> gradientColors2 = [
    const Color(0xfff7931e).withOpacity(0.1),
    const Color(0xfff7931e).withOpacity(0.1),
  ];
  bool showAvg = false;

}