import 'package:flutter/material.dart' as mate;
import 'package:one_market/widgets/space.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

import '../../../../constants/constants_and_imports.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({Key? key, required this.ShopNumber}) : super(key: key);
  final String ShopNumber;
  void message(context, String text) {
    mate.ScaffoldMessenger.of(context).hideCurrentSnackBar();

    final snackBar = mate.SnackBar(
      content: Text(text),
    );

    mate.ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  List<PlutoMenuItem> getMenus(BuildContext context) {
    return [
      PlutoMenuItem(
        title: '',
        icon: FluentIcons.more_vertical,
        children: [
          PlutoMenuItem(
            title: 'Owner',
            icon: mate.Icons.person_sharp,
            onTap: () => message(context, 'Menu 1-1 tap'),
children: [
  PlutoMenuItem(
    title: 'Assign Owner',
    icon: mate.Icons.person_pin,
    onTap: () => message(context, 'Menu 1-1 tap'),

  ),
  PlutoMenuItem(
    title: 'Remove Owner',
    icon: mate.Icons.person_add_disabled,
    onTap: () => message(context, 'Menu 1-1 tap'),

  ),
  PlutoMenuItem(
    title: 'Update Owner',
    icon: mate.Icons.person_add_alt_outlined,
    onTap: () => message(context, 'Menu 1-1 tap'),

  ),]
          ),

          PlutoMenuItem.divider(height: 10,color: Colors.white),
          PlutoMenuItem(
            title: 'Shop',
            icon: mate.Icons.delete_forever_outlined,
            onTap: () => message(context, 'Menu 1-1 tap'),
children: [
  PlutoMenuItem(
    title: 'Update Shop',
    icon: mate.Icons.update,
    onTap: () => message(context, 'Menu 1-1 tap'),

  ),
  PlutoMenuItem(
  title: 'Delete Shop',
  icon: mate.Icons.delete_forever_outlined,
  onTap: () => message(context, 'Menu 1-1 tap'),

),]
          ),


        ],
      ),

    ];
  }
  @override
  Widget build(BuildContext context) {
    return mate.Material(
        color: FluentTheme.of(context).micaBackgroundColor,
        borderRadius: BorderRadius.circular(8),
        elevation: 8,
        child: mate.InkWell(onTap: () {

        },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SpaceHeight(20),
        Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [Expanded(flex:6,child: SizedBox()),
             Expanded(
                child: PlutoMenuBar(
                  mode: PlutoMenuBarMode.tap,height: 20,
                  backgroundColor: FluentTheme.of(context).micaBackgroundColor,
                  activatedColor:  FluentTheme.of(context).cardColor,
                  // indicatorColor: Colors.deepOrange,
                  textStyle:  TextStyle(color:  FluentTheme.of(context).cardColor),
                  menuIconColor:  FluentTheme.of(context).cardColor,
                  moreIconColor:  FluentTheme.of(context).scaffoldBackgroundColor,
                  menus: getMenus(context),
                ),
              ),
            ],
          ),
              Expanded(flex: 6,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(500000),
                  child: Acrylic(
                    child: Image.asset(
                      height: 90,
                      width: 90,
                      assets.shop,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SpaceHeight(10),
              Expanded(flex: 3,
                child: Text(
                  ShopNumber,
                  style: FluentTheme.of(context)
                      .typography
                      .title!
                      .copyWith(color: Colors.white.withOpacity(0.8)),
                ),
              ),
              SpaceHeight(10),
              Expanded(flex: 4,
                child: Text(
                  " import and export of cement , ceramic bowel, rod ,toilet",
                  maxLines: 2,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: FluentTheme.of(context)
                      .typography
                      .display!
                      .copyWith(color: Colors.white.withOpacity(0.7), fontWeight: FontWeight.normal),
                ),
              ),
              SpaceHeight(10),
              Container(
                color: Colors.white,
                height: 1,
                width: double.infinity,
              ),
              Expanded(flex: 3,
                child: mate.Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "View more details",
                      style: FluentTheme.of(context)
                          .typography
                          .title!
                          .copyWith(color: Colors.white,fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
