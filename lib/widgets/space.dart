
import 'package:fluent_ui/fluent_ui.dart';

class SpaceHeight extends StatelessWidget {
  const SpaceHeight(this.space,{Key? key}) : super(key: key);
final double space;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: space,);
  }
}
class SpaceWidth extends StatelessWidget {
  const SpaceWidth(  this.space,{Key? key}) : super(key: key);
  final double space;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: space,);
  }
}