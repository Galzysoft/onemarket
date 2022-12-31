import 'package:flutter/material.dart' as mate;
import 'package:get/get.dart';
import 'package:one_market/widgets/spacewidth.dart';

import '../../constants/constants_and_imports.dart';
import '../space.dart';
import 'logic.dart';

class DefaultDatePickerPage extends StatefulWidget {
  final String hintText;
  final String selectedDate;
 final void Function() onTap;
  DefaultDatePickerPage({super.key, required this.hintText, required this.selectedDate, required this.onTap});

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
        Card(backgroundColor: FluentTheme
            .of(context)
            .inactiveColor, child: mate.InkWell(child: mate.Row(
          children: [Icon(FluentIcons.event_date),SpaceWidth(10),
            Text(widget.selectedDate.isEmpty?"Select Date":widget.selectedDate, style: FluentTheme
                .of(context)
                .typography
                .caption,),
          ],
        ), onTap: widget.onTap,)),
      ],
    );
  }
}

