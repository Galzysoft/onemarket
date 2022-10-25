import 'package:one_market/constants/constants_and_imports.dart';
import 'package:one_market/widgets/spacehieght.dart';
import '../spacewidth.dart';
import 'logic.dart';

class DefaultTextField extends StatelessWidget {
  DefaultTextField({
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
          hintText ,
          style: FluentTheme.of(context).typography.caption,
        ),
        SpaceHeight(
          10,
        ),
        TextFormBox(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,horizontal: 8
            ),
            controller: controller,
            style: FluentTheme.of(context).typography.caption,
            decoration: BoxDecoration(
              color: FluentTheme.of(context).inactiveColor,
            ),
            validator: (text) {
              if (text == null || text.isEmpty) return 'Provide an email';
            }),
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
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,horizontal: 8
            ),
            controller: controller,
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
