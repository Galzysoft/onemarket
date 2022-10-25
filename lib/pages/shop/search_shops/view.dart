import 'package:get/get.dart';
import 'package:flutter/material.dart' as mate;
import 'package:one_market/pages/shop/search_shops/widget/searchCard.dart';
import '../../../constants/constants_and_imports.dart';
import '../../../widgets/default_combo_box/view.dart';
import '../../../widgets/default_date_picker/view.dart';
import '../../../widgets/default_text_field/view.dart';
import '../../../widgets/spacehieght.dart';
import '../../../widgets/spacewidth.dart';
import '../../../widgets/users_header/view.dart';
import 'logic.dart';

class SearchShopsPage extends StatelessWidget {
  final logic = Get.put(SearchShopsLogic());
  final state = Get.find<SearchShopsLogic>().state;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: ScaffoldPage(
        content: mate.Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: mate.Column(
            children: [
              SpaceHeight(10),
              UsersHeaderPage(backbutton: true),
              SpaceHeight(10),
              TextFormBox(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
                controller: logic.controller,
                style: FluentTheme.of(context).typography.caption!.copyWith(
                    color: FluentTheme.of(context).micaBackgroundColor),
                placeholder: "Search for shops",
                prefix: mate.Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(assets.search, height: 32),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: FluentTheme.of(context).cardColor.withOpacity(0.7),
                ),
              ),
              Expanded(
                child: ListView(padding: EdgeInsets.only(bottom: 100),
                  children: [
                    Column(children: [
                      SizedBox(
                          width: double.infinity,
                          child: GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 50.0,
                                    mainAxisSpacing: 30.0,
                                    childAspectRatio: 1.2),
                            itemCount: 10,
                            itemBuilder: (context, index) => SearchCard(),
                          )),
                      SpaceHeight(10),
                      Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          mate.SizedBox(height: 30,
                            child: Button(
                              style: ButtonStyle(
                                  backgroundColor:
                                      ButtonState.all(colors.primarydark_color)),
                              child: mate.Row(
                                children: [
                                  Image.asset(assets.arrowback,width: 40,height: 30),SpaceWidth(10),
                                  Text(
                                    "Previous",
                                    style: FluentTheme.of(context)
                                        .typography
                                        .caption!.copyWith(fontSize: 14),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     FluentPageRoute(
                                //       builder: (context) => CreateShopPage(),
                                //     ));
                              },
                            ),
                          ),SpaceWidth(30),   mate.SizedBox(height: 30,
                            child: Button(
                              style: ButtonStyle(
                                  backgroundColor:
                                  ButtonState.all(colors.primarydark_color)),
                              child: mate.Row(
                                children: [
                                  Text(
                                    "Next",
                                    style: FluentTheme.of(context)
                                        .typography
                                        .caption!.copyWith(fontSize: 14),
                                  ),
                                  Image.asset(assets.arrowfront,width: 40,height: 30),SpaceWidth(10),

                                ],
                              ),
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     FluentPageRoute(
                                //       builder: (context) => CreateShopPage(),
                                //     ));
                              },
                            ),
                          ),
                        ],
                      )
                    ]),
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
