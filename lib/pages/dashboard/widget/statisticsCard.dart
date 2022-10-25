import 'package:one_market/constants/constants_and_imports.dart';

import '../../../widgets/spacewidth.dart';

class StatisticsCard extends StatelessWidget {
  const StatisticsCard({
    Key? key, required this.title, required this.subtitle, required this.icon,
  }) : super(key: key);
final String  title;
final String subtitle;
final String icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 100,width: 200,
      child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [     Text(title,
                    overflow: TextOverflow.ellipsis,
                    style: FluentTheme.of(context).typography.title),  Text(subtitle,
                    overflow: TextOverflow.ellipsis,
                    style: FluentTheme.of(context).typography.subtitle),],),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: CircleAvatar(radius: 50,
                    backgroundColor: FluentTheme.of(context).scaffoldBackgroundColor.withOpacity(0.7),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        height: 50,
                        width: 50,
                        icon,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
