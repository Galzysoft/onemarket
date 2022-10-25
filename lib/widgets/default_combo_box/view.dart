import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/constants_and_imports.dart';
import '../spacehieght.dart';
import 'logic.dart';

class DefaultComboBox extends StatefulWidget {
  final String hintText;
  final Widget Icon;
  final List<String> comboBoxListItems;
final String label;
  DefaultComboBox(
      {super.key,
      required this.hintText,
      required this.comboBoxListItems,
      required this.Icon, required this.label});

  @override
  State<DefaultComboBox> createState() => _DefaultComboBoxState();
}

class _DefaultComboBoxState extends State<DefaultComboBox> {
  final logic = Get.put(DefaultComboBoxLogic());

  final state = Get.find<DefaultComboBoxLogic>().state;

  String? value;

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.hintText + " :",
          style: FluentTheme.of(context).typography.caption,
        ),
        SpaceHeight(
          10,
        ),
        Container(margin: EdgeInsets.only(    bottom: 20.0,),
          color: colors.primarydark_color,
          height: 45,
          child: Combobox<String>(iconSize: 40,
            placeholder: Text(
              widget.label,
              style: FluentTheme.of(context).typography.title,
            ),
            isExpanded: true,
            comboboxColor:FluentTheme.of(context).inactiveColor,
            // comboboxColor: FluentTheme.of(context).inactiveColor,
            icon: widget.Icon,
            items: widget.comboBoxListItems
                .map((e) => ComboboxItem<String>(
                      value: e,
                      child: Text(
                        e,
                        style: FluentTheme.of(context).typography.title,
                      ),
                    ))
                .toList(),
            value: value,
            onChanged: (value) {
              // print(value);
              if (value != null) setState(() => this.value = value);
            },
          ),
        ),
      ],
    );
    ;
  }
}
