import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:get/get.dart';
import 'package:one_market/constants/constants_and_imports.dart';
import 'package:one_market/pages/dashboard/widget/statisticsCard.dart';
import 'package:one_market/pages/dashboard/widget/statistics_chart/view.dart';
import 'package:one_market/pages/dashboard/widget/statisticschart2/view.dart';
import 'package:one_market/pages/login/view.dart';
import 'package:one_market/pages/members/view.dart';
import 'package:one_market/widgets/spacehieght.dart';
import 'package:one_market/widgets/spacewidth.dart';
import 'package:one_market/widgets/users_header/view.dart';

import 'logic.dart';

class DashboardPage extends StatelessWidget {
  final logic = Get.put(DashboardLogic());
  final state = Get.find<DashboardLogic>().state;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: ScaffoldPage(header:   UsersHeaderPage(),
        content: Container(
          padding: EdgeInsets.all(20),
          child: Column(children: [

            SpaceHeight(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                    child: Animate(
                        delay: 100.ms,
                        effects: [
                          FadeEffect(duration: 500.ms),
                          //ScaleEffect(duration: 1000.ms),
                          MoveEffect(delay: 500.ms, duration: 600.ms,curve: Curves.bounceOut)
                        ],
                        onComplete: (animation) {},
                        child: StatisticsCard(
                          subtitle: 'Total Attachee',
                          title: "107,209",
                          icon: assets.atachee,
                        ))),
                SpaceWidth(20),
                Expanded(
                    child: Animate(
                  delay: 200.ms,
                  effects: [
                    FadeEffect(duration: 500.ms),
                    //ScaleEffect(duration: 1000.ms),
                    MoveEffect(delay: 500.ms, duration: 600.ms,curve: Curves.bounceOut)
                  ],
                  onComplete: (animation) {},
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            FluentPageRoute(
                              builder: (context) =>
                                  NavigationView(appBar: NavigationAppBar()),
                            ));
                      },
                      child: StatisticsCard(
                        subtitle: 'Total Apprentiece',
                        title: "345,209",
                        icon: assets.apprientice,
                      )),
                )),
                SpaceWidth(20),
                Expanded(
                    child: Animate(
                        delay: 300.ms,
                        effects: [
                          FadeEffect(duration: 500.ms),
                          //ScaleEffect(duration: 1000.ms),
                          MoveEffect(delay: 500.ms, duration: 600.ms,curve: Curves.bounceOut)
                        ],
                        onComplete: (animation) {},
                        child: StatisticsCard(
                          subtitle: 'Total Workers',
                          title: "17,900",
                          icon: assets.totalworker,
                        ))),
                SpaceWidth(20),
                Expanded(
                    child: Animate(
                      delay: 400.ms,

                      effects: [
                        FadeEffect(duration: 500.ms),
                        //ScaleEffect(duration: 1000.ms),
                        MoveEffect(delay: 500.ms, duration: 600.ms)
                      ]
                      , onComplete: (animation) {

                    },
                      child: StatisticsCard(
                  subtitle: 'Total Members',
                  title: "307,208",
                  icon: assets.member,
                ),
                    )),
              ],
            ),
            SpaceHeight(12),
            Expanded(
              child: Row(
                children: [
                  //    Expanded(child: Acrylic(luminosityAlpha: 0.6,tint: colors.primary_color,
                  //        child: StatisticsChartPage(chartname: "Stats"))),
                  // ,
                  Expanded(
                      child: Statisticschart2Page(
                    chartname: "Stats",
                    isallstation: true,
                  )),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
