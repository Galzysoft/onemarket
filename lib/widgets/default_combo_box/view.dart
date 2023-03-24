import 'package:flutter/material.dart' as mate;
import 'package:get/get.dart';

import '../../constants/constants_and_imports.dart';
import '../space.dart';
import 'logic.dart';

class DefaultComboBox extends StatefulWidget {
  final String? hintText;
  final Widget Icon;
  final List<String> comboBoxListItems;
  final String label;
  void Function(String?)? onChanged;
  String? selected;
  DefaultComboBox(
      {super.key,
       this.hintText,
      required this.comboBoxListItems,
      required this.Icon,
       this.selected,
        this.onChanged,
      required this.label});

  @override
  State<DefaultComboBox> createState() => _DefaultComboBoxState();
}

class _DefaultComboBoxState extends State<DefaultComboBox> {
  final logic = Get.put(DefaultComboBoxLogic());

  final state = Get.find<DefaultComboBoxLogic>().state;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.hintText==null?SizedBox() :Text(
          widget.hintText! + " :",
          style: FluentTheme.of(context).typography.caption,
        ),
        SpaceHeight(
          10,
        ),
        Container(
          margin: EdgeInsets.only(
            bottom: 20.0,
          ),
          color: colors.primarydark_color,
          height: 45,
          child: ComboBox<String>(
            popupColor: colors.primarywhite_color,
            iconSize: 40,
            placeholder: Text(
              widget.label,
              style: FluentTheme.of(context).typography.title,
            ),style: FluentTheme.of(context).typography.display,

            isExpanded: true,
            // comboboxColor:FluentTheme.of(context).inactiveColor,
            // comboboxColor: FluentTheme.of(context).inactiveColor,
            icon: widget.Icon,
            items: widget.comboBoxListItems
                .map<ComboBoxItem<String>>((e) => ComboBoxItem<String>(
                      value: e,
                      child: Text(
                        e,
                        style: FluentTheme.of(context).typography.title,
                      ),
                    ))
                .toList(),
            value: widget.selected,
            onChanged:widget.onChanged==null? (value) {
              // print(value);
              if (value != null)setState(() {
                widget.selected = value;
              });
            }:widget.onChanged,
          ),
        ),
      ],
    );
    ;
  }
}
