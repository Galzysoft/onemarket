import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart' as mate;
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_button/group_button.dart';
import 'package:intl/intl.dart';
import 'package:one_market/widgets/spacewidth.dart';

import '../../../../constants/constants_and_imports.dart';
import 'logic.dart';

class Statisticschart2Page extends mate.StatefulWidget {
  Statisticschart2Page(
      {Key? key, required this.chartname, required this.isallstation})
      : super(key: key);
  final String chartname;
  late  bool isallstation;

  @override
  mate.State<Statisticschart2Page> createState() =>
      _Statisticschart2PageState();
}

class _Statisticschart2PageState extends mate.State<Statisticschart2Page> {
  final logic = Get.put(Statisticschart2Logic());

  final state = Get.find<Statisticschart2Logic>().state;

  List<BarChartGroupData> itemz = [];

  @override
  void initState() {
    logic.items(widget.isallstation).then((value) {
      setState(() {
        print(value);

        itemz = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget getTitles(double value, TitleMeta meta) {
      var style = FluentTheme.of(context).typography.subtitle;
      String text;
      switch (value.toInt()) {
        case 0:
          text = widget.isallstation ? 'Station 1' : "Tank 01";
          logic.items(widget.isallstation).then((value) {
            itemz = value;
          });
          break;
        case 1:
          text = widget.isallstation ? 'Station 2' : "Shop 02";
          break;
        case 2:
          text = widget.isallstation ? 'Station 3' : "Shop 03";
          break;
        case 3:
          text = widget.isallstation ? 'Station 4' : "Shop 04";
          break;
        case 4:
          text = widget.isallstation ? 'Station 5' : "Shop 05";
          break;

        default:
          text = '';
          break;
      }
      return Center(child: Text(text, style: style));
    }

    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          child: Column(
            children: [
              mate.SizedBox(height: 50,
                child: Row(
                  children: [
                    SpaceWidth(10),
                    Text(widget.chartname,
                        style: FluentTheme.of(context).typography.title),
                    Expanded(child: SizedBox()),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(right: 8.0, left: 8.0, bottom: 0),
                  child: itemz.isEmpty
                      ? SizedBox(
                          width: 10,
                        )
                      : BarChart(
                          BarChartData(
                            borderData: FlBorderData(show: false),
                            gridData: FlGridData(
                              show: true,
                              drawVerticalLine: false,
                              drawHorizontalLine: true,
                              horizontalInterval: 1000,
                              // verticalInterval: 1,
                              getDrawingHorizontalLine: (value) {
                                return FlLine(
                                  color: const Color(0xff71BDE8),
                                  strokeWidth: 1,
                                );
                              },
                            ),
                            // backgroundColor: colors.black.withOpacity(0.5),
                            barTouchData: BarTouchData(
                                enabled: true,
                                touchTooltipData: BarTouchTooltipData(
                                  tooltipBgColor:
                                      Colors.black.withOpacity(0.7),
                                  getTooltipItem: (
                                    BarChartGroupData group,
                                    int groupIndex,
                                    BarChartRodData rod,
                                    int rodIndex,
                                  ) {
                                    return BarTooltipItem(
                                      "${rod.toY.round().toString()} Liters",
                                      TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                    );
                                  },
                                )),
                            groupsSpace: 20,
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
                                  interval: 1,
                                  showTitles: true,
                                  getTitlesWidget: getTitles,
                                ),
                              ),
                              leftTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                      showTitles: true,
                                      reservedSize: 50,
                                      interval: 1000,
                                      getTitlesWidget:
                                          (double value, TitleMeta meta) {
                                        return Text(
                                          " ${value >= 1000000 ? NumberFormat.compactCurrency(
                                              decimalDigits: 2,
                                              symbol:
                                                  '', // if you want to add currency symbol then pass that in this else leave it empty.
                                            ).format(value) : value} L",
                                          style: FluentTheme.of(context)
                                              .typography
                                              .subtitle,
                                        );
                                      })),
                            ),
// alignment: BarChartAlignmentaceEvenly,
                            barGroups: itemz,

                            minY: 17000,
                            maxY: 22000,
                          ),
                        ),
                ),
              ),
              mate.SizedBox(height: 40,
                child: Padding(
                  padding: EdgeInsets.only(right: 8, left: 8, bottom: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: FittedBox(
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Shops",
                                    style: FluentTheme.of(context)
                                        .typography
                                        .subtitle,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 7,
                                      height: 2,
                                      color: Colors.red,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Owners",
                                    style: FluentTheme.of(context)
                                        .typography
                                        .subtitle,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 7,
                                      height: 2,
                                      color: Colors.green,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Attachee",
                                    style: FluentTheme.of(context)
                                        .typography
                                        .subtitle,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 7,
                                      height: 2,
                                      color: Colors.yellow,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
    SizedBox(width: 10,),


                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
