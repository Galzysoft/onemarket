import 'package:flutter/material.dart' as mate;
import 'package:one_market/constants/constants_and_imports.dart';
import 'package:get/get.dart';
import 'package:one_market/pages/login/logic.dart';
import 'package:one_market/widgets/tool_bar/view.dart';
import 'package:one_market/widgets/tool_bar/widget/toolBarItem.dart';

import 'logic.dart';

class UsersHeaderPage extends StatelessWidget {
  final logic = Get.put(UsersHeaderLogic());
  final state = Get.find<UsersHeaderLogic>().state;
  final bool? backbutton;
  final logicuser = Get.put(LoginLogic());
  final Widget? centerWidget;
  String? title;
  final List<CommandBarItem>? toolBarItems;

  UsersHeaderPage(
      {super.key,
      this.backbutton,

      this.title,
      this.toolBarItems,
      this.centerWidget});

  @override
  Widget build(BuildContext context) {
    title = title ?? "";
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        children: [
          toolBarItems != null
              ? ToolBar(
                  toolBarItems: toolBarItems!,
                )
              : SizedBox(),
          SizedBox(
              height: 70,
              child: Card(
                child: Row(
                  children: [
                    backbutton == true
                        ? Tooltip(
                            message: "Back",
                            style: TooltipThemeData(
                                textStyle: TextStyle(color: Colors.white)),
                            child: SizedBox(
                                height: 50,
                                child: Card(
                                    backgroundColor:
                                        FluentTheme.of(context).cardColor,
                                    child: mate.InkWell(
                                      child: Icon(
                                        FluentIcons.back,
                                        color: FluentTheme.of(context)
                                            .micaBackgroundColor,
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ))),
                          )
                        : SizedBox(),
                    Expanded(
                      child: Text(title!,
                          style: FluentTheme.of(context).typography.bodyLarge),
                    ),
                    Expanded(
                        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        centerWidget == null ? SizedBox() : Expanded(child: centerWidget!),
                      ],
                    )),
                    Expanded(
                      child: SizedBox(
                        width: 300,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(logicuser.userModel.value.data!.user!.username.toString(),
                                      overflow: TextOverflow.ellipsis,
                                      style: FluentTheme.of(context)
                                          .typography
                                          .title),
                                  Text(logicuser.userModel.value.data!.user!.adminType!.toString(),
                                      overflow: TextOverflow.ellipsis,
                                      style: FluentTheme.of(context)
                                          .typography
                                          .subtitle),
                                ],
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Container(width: 50,height: 50,
                                    decoration: BoxDecoration(shape: BoxShape.circle,),
                                  child:ClipRRect(borderRadius: BorderRadius.circular(20000),
                                    child: FadeInImage(fit: BoxFit.fill,placeholder:  AssetImage(
                                      assets.user,
                                    ),image: NetworkImage(Routes.storageProfileUrl+logicuser.userModel.value.data!.user!.avatar!.toString(),),),
                                  )

                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
