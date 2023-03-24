import 'package:country_picker/country_picker.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:one_market/constants/constants_and_imports.dart';
import 'package:one_market/widgets/space.dart';
import '../spacewidth.dart';
import 'logic.dart';
import 'package:flutter/material.dart' as mate;

class DefaultTextField extends StatelessWidget {
  DefaultTextField({
    required this.controller,
    required this.hintText,
    this.label = "",
    this.isNumber = false,
  });

  final bool? isNumber;
  final logic = Get.put(DefaultTextFieldLogic());
  final state = Get.find<DefaultTextFieldLogic>().state;
  final TextEditingController controller;
  final String hintText;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText,
          style: FluentTheme.of(context).typography.caption,
        ),
        SpaceHeight(
          10,
        ),
        TextFormBox(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
            controller: controller,
            keyboardType: TextInputType.phone,
            cursorColor: Colors.white,
            highlightColor: Colors.white,enableInteractiveSelection: true,
            inputFormatters: isNumber == true
                ? [
                    FilteringTextInputFormatter.allow(
                        RegExp(r'^\d+\.?\d{0,2}')),
                    // WhitelistingTextInputFormatter(RegExp(r'^\d+\.?\d{0,2}')),
                  ]
                : [],
            style: FluentTheme.of(context).typography.caption,
            decoration: BoxDecoration(
              color: FluentTheme.of(context).inactiveColor,
            ),
            placeholder: label,
            placeholderStyle: FluentTheme.of(context).typography.caption,
            validator: (text) {
              if (text == null || text.isEmpty) return 'Provide an email';
            }),
      ],
    );
  }
}

class DefaultCountry extends StatelessWidget {
  DefaultCountry({
    required this.hintText,
    required this.onSelect,
    required this.displayText,
  });

  final void Function(Country country) onSelect;
  final logic = Get.put(DefaultTextFieldLogic());
  final state = Get.find<DefaultTextFieldLogic>().state;
  final String displayText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText,
          style: FluentTheme.of(context).typography.caption,
        ),
        SpaceHeight(
          10,
        ),
        mate.InkWell(
          onTap: () {
            showCountryPicker(
              context: context,
              showPhoneCode: true,
              searchAutofocus: true,
              countryListTheme: CountryListThemeData(
                  backgroundColor:
                      FluentTheme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  searchTextStyle: FluentTheme.of(context).typography.display,
                  textStyle: FluentTheme.of(context).typography.display),
              // optional. Shows phone code before the country name.
              onSelect: onSelect,
            );
          },
          child: IgnorePointer(
            ignoring: true,
            child: TextFormBox(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
                controller: TextEditingController(text: displayText),
                style: FluentTheme.of(context).typography.caption,
                decoration: BoxDecoration(
                  color: FluentTheme.of(context).inactiveColor,
                ),
                validator: (text) {
                  if (text == null || text.isEmpty) return 'Provide an email';
                }),
          ),
        ),
      ],
    );
  }
}

class DefaultPasswordTextField extends StatelessWidget {
  DefaultPasswordTextField({
    required this.controller,
    required this.hintText,
  });

  final logic = Get.put(DefaultTextFieldLogic());
  final state = Get.find<DefaultTextFieldLogic>().state;
  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText + " :",
          style: FluentTheme.of(context).typography.caption,
        ),
        SpaceHeight(
          10,
        ),
        TextFormBox(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
            controller: controller,
            cursorColor: Colors.white,
            highlightColor: Colors.white,enableInteractiveSelection: true,

            style: FluentTheme.of(context).typography.caption,
            decoration:
                BoxDecoration(color: FluentTheme.of(context).inactiveColor),
            obscureText: true,
            validator: (text) {
              if (text == null || text.isEmpty) return 'Provide an email';
            }),
      ],
    );
  }
}
