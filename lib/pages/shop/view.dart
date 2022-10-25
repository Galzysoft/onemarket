import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart' as mate;
import 'package:one_market/pages/shop/createshop/view.dart';
import 'package:one_market/pages/shop/search_shops/view.dart';

import 'package:one_market/widgets/spacehieght.dart';
import 'package:one_market/widgets/spacewidth.dart';
import '../../constants/constants_and_imports.dart';
import '../../widgets/users_header/view.dart';
import 'logic.dart';

class ShopPage extends StatelessWidget {
  final logic = Get.put(ShopLogic());
  final state = Get.find<ShopLogic>().state;

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return NavigationView(
      content: ScaffoldPage(
        content: mate.Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: mate.Column(
            children: [
              UsersHeaderPage(),
              SpaceHeight(40),
              Expanded(
                child: ListView(
                  children: [
                    mate.SizedBox(height:MediaQuery.of(context).size.height-160,
                      child: Row(
                          children: [
                        Expanded(
                          child: Column(
                            children: [
                              SpaceHeight(10),
                              mate.Row(
                                children: [
                                  Expanded(
                                    child: Card(
                                        child:  Animate(
                                          delay: 100.ms,

                                          effects: [
                                            FadeEffect(duration: 500.ms),
                                            ScaleEffect(duration: 1000.ms),
                                            MoveEffect(delay: 500.ms, duration: 600.ms)
                                          ]
                                          , onComplete: (animation) {

                                        },
                                          child: Image.asset(
                                      assets.createshop,
                                      height: 100,
                                      width: 300,
                                    ),
                                        )),
                                  ),
                                ],
                              ),
                              SpaceHeight(10),
                              SizedBox(
                                width: double.infinity,
                                child: mate.Row(
                                  children: [
                                    Expanded(
                                      child: Button(
                                        style: ButtonStyle(
                                            backgroundColor: ButtonState.all(
                                                colors.primarydark_color)),
                                        child: Text(
                                          "Create Shops",
                                          style: FluentTheme.of(context)
                                              .typography
                                              .caption,
                                        ),
                                        onPressed: () {Navigator.push(context, FluentPageRoute(builder: (context) => CreateShopPage(),));},
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SpaceWidth(30),
                        Expanded(
                          child: Column(
                            children: [
                              SpaceHeight(200),
                              mate.Row(
                                children: [
                                  Expanded(
                                    child: Card(
                                        child:  Animate(
                                          delay: 200.ms,

                                          effects: [
                                            FadeEffect(duration: 500.ms),
                                            ScaleEffect(duration: 1000.ms),
                                            MoveEffect(delay: 500.ms, duration: 600.ms)
                                          ]
                                          , onComplete: (animation) {

                                        },
                                          child: Image.asset(
                                            assets.searchshop,
                                            height: 100,
                                            width: 300,
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                              SpaceHeight(10),
                              SizedBox(
                                width: double.infinity,
                                child: mate.Row(
                                  children: [
                                    Expanded(
                                      child: Button(
                                        style: ButtonStyle(
                                            backgroundColor: ButtonState.all(
                                                colors.primarydark_color)),
                                        child: Text(
                                          "All Shops",
                                          style: FluentTheme.of(context)
                                              .typography
                                              .caption,
                                        ),
                                        onPressed: () {Navigator.push(context, FluentPageRoute(builder: (context) => SearchShopsPage(),));},

                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
