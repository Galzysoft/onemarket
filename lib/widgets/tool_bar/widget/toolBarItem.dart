
import '../../../constants/constants_and_imports.dart';

class ToolBarItem extends CommandBarItem {
  /// The icon to show in the button (primary area) or menu (secondary area)
  final String? icon;

  /// The label to show in the button (primary area) or menu (secondary area)
  final String? label;

  /// The sub-title to use if this item is shown in the secondary menu
  final Widget? subtitle;

  /// The trailing widget to use if this item is shown in the secondary menu
  final Widget? trailing;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final FocusNode? focusNode;
  final bool autofocus;

  const ToolBarItem({
    Key? key,
    this.icon,
    this.label,
    this.subtitle,
    this.trailing,
    required this.onPressed,
    this.onLongPress,
    this.focusNode,
    this.autofocus = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, CommandBarItemDisplayMode displayMode) {
    // TODO: implement build
    final showIcon = (icon != null);
    final showLabel = (label != null &&
        (displayMode == CommandBarItemDisplayMode.inPrimary || !showIcon));



    return IconButton(
     key: key,
     onPressed: onPressed,
     onLongPress: onLongPress,
     focusNode: focusNode,
     autofocus: autofocus,
     icon: CommandBarItemInPrimary(
       child: Row(
         mainAxisSize: MainAxisSize.min,
         children: [
           if (showIcon)
             IconTheme(
               data: IconTheme.of(context).copyWith(size: 16),
               child:  Image.asset(height: 30,icon!)),



           if (showIcon && showLabel) const SizedBox(width: 10),
           if (showLabel)Text(label!) ,
         ],
       ),
     ),
   );
  }


}
