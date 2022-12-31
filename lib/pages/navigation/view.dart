import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:one_market/constants/constants_and_imports.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart' as Acrylics;
import 'logic.dart';

class NavigationPage extends StatefulWidget {
  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  final logic = Get.put(NavigationLogic());

  final state = Get.find<NavigationLogic>().state;

  var members = 2000000;
  var shops = 20000;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Acrylics.Window.setEffect(
        effect: Acrylics.WindowEffect.acrylic,
        color: colors.primarydark_color.withOpacity(0.6));
    doWhenWindowReady(() {
      final win = appWindow;
      win.minSize = Size(1010, 645);
      win.size = Size(1010, 645);
      win.alignment = Alignment.center;
      win.title = strings.app_title;
      win.show();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Acrylic(
      luminosityAlpha: 0.4,
      child: Obx(() {
        return NavigationView(
            pane: NavigationPane(
              selected: logic.selectedidex.value,
              onChanged: (value) {
                // Navigator.pop(context);
                logic.changeindex = value;
              },
              size: NavigationPaneSize(openWidth: 200),
              items: [
                PaneItemSeparator(color: Colors.transparent),
                PaneItem(
                  selectedTileColor: ButtonState.all(colors.primary_color),
                  icon: Image.asset(
                    assets.home,
                    color: colors.primarywhite_color,
                    height: 20,
                  ),
                  title: Text(
                    strings.dashboard,
                    style: FluentTheme.of(context).typography.display,
                  ), body: logic.pages[logic.selectedidex.value],
                ),
                PaneItemSeparator(color: Colors.transparent),
                PaneItem(
                    selectedTileColor: ButtonState.all(colors.primary_color),
                    icon: Image.asset(
                      assets.member,
                      color: colors.primarywhite_color,
                      height: 20,
                    ),
                    title: Text(
                      strings.member,
                      style: FluentTheme.of(context).typography.display,
                    ),
                    infoBadge: InfoBadge(
                      source: Text(" ${NumberFormat.compactCurrency(
                        decimalDigits: 2,
                        symbol:
                            '', // if you want to add currency symbol then pass that in this else leave it empty.
                      ).format(members)}"),
                    ), body: logic.pages[logic.selectedidex.value]),
                PaneItemSeparator(color: Colors.transparent),
                PaneItem(
                    selectedTileColor: ButtonState.all(colors.primary_color),
                    icon: Image.asset(
                      assets.shop,
                      color: colors.primarywhite_color,
                      height: 20,
                    ),
                    title: Text(
                      strings.shop,
                      style: FluentTheme.of(context).typography.display,
                    ),
                    infoBadge: InfoBadge(
                      source: Text(" ${NumberFormat.compactCurrency(
                        decimalDigits: 2,
                        symbol:
                            '', // if you want to add currency symbol then pass that in this else leave it empty.
                      ).format(shops)}"),
                    ), body: logic.pages[logic.selectedidex.value]),
                PaneItemSeparator(color: Colors.transparent),
                PaneItem(
                  selectedTileColor: ButtonState.all(colors.primary_color),
                  icon: Image.asset(
                    assets.fee,
                    color: colors.primarywhite_color,
                    height: 20,
                  ),
                  title: Text(
                    strings.fee,
                    style: FluentTheme.of(context).typography.display,
                  ), body: logic.pages[logic.selectedidex.value],
                ),
                PaneItemSeparator(color: Colors.transparent),
                PaneItem(
                  selectedTileColor: ButtonState.all(colors.primary_color),
                  icon: Image.asset(
                    assets.task_force,
                    color: colors.primarywhite_color,
                    height: 20,
                  ),
                  title: Text(
                    strings.tax_force,
                    style: FluentTheme.of(context).typography.display,
                  ), body: logic.pages[logic.selectedidex.value],
                ),
                PaneItemSeparator(color: Colors.transparent),
                PaneItem(
                  selectedTileColor: ButtonState.all(colors.primary_color),
                  icon: Image.asset(
                    assets.admin,
                    color: colors.primarywhite_color,
                    height: 20,
                  ),
                  title: Text(
                    strings.admin,
                    style: FluentTheme.of(context).typography.display,
                  ), body: logic.pages[logic.selectedidex.value],
                ),
                PaneItemSeparator(color: Colors.transparent),
              ],
            ),
          );
      }),
    );
  }
}
