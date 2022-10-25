import 'package:flutter/material.dart' as mate;
import 'package:get/get.dart';
import 'package:one_market/widgets/spacewidth.dart';

import '../../constants/constants_and_imports.dart';
import '../spacehieght.dart';
import 'logic.dart';

class DefaultDatePickerPage extends StatefulWidget {
  final String hintText;

  DefaultDatePickerPage({super.key, required this.hintText});

  @override
  State<DefaultDatePickerPage> createState() => _DefaultDatePickerPageState();
}

class _DefaultDatePickerPageState extends State<DefaultDatePickerPage> {
  final logic = Get.put(DefaultDatePickerLogic());

  final state = Get
      .find<DefaultDatePickerLogic>()
      .state;
  late DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.hintText + " :",
          style: FluentTheme
              .of(context)
              .typography
              .caption,
        ),
        SpaceHeight(
          10,
        ),
        Obx(() {
          return Card(backgroundColor: FluentTheme
              .of(context)
              .inactiveColor, child: mate.InkWell(child: mate.Row(
            children: [Icon(FluentIcons.event_date),SpaceWidth(10),
              Text(logic.selectedDate.value.isEmpty?"Select Date":logic.selectedDate.value, style: FluentTheme
                  .of(context)
                  .typography
                  .caption,),
            ],
          ), onTap: () {
            logic.showCalender(context,);
          },));
        }),
      ],
    );
  }
}

