import 'package:flutter/material.dart' as mate;
import 'package:one_market/widgets/spacehieght.dart';

import '../../../../constants/constants_and_imports.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return mate.Material(
        color: FluentTheme.of(context).micaBackgroundColor,
        borderRadius: BorderRadius.circular(8),
        elevation: 8,
        child: mate.InkWell(onTap: () {

        },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SpaceHeight(20),
              ClipRRect(
                borderRadius: BorderRadius.circular(500000),
                child: Image.asset(
                  height: 90,
                  width: 90,
                  assets.user,
                  fit: BoxFit.fill,
                ),
              ),
              SpaceHeight(10),
              Text(
                "ben okoye mbanefo",
                style: FluentTheme.of(context)
                    .typography
                    .title!
                    .copyWith(color: Colors.white.withOpacity(0.8)),
              ),
              SpaceHeight(10),
              Expanded(
                child: Text(
                  " import and export of cement , ceramic bowel, rod ,toilet",
                  maxLines: 2,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: FluentTheme.of(context)
                      .typography
                      .display!
                      .copyWith(color: Colors.white.withOpacity(0.7), fontWeight: FontWeight.normal),
                ),
              ),
              SpaceHeight(10),
              Container(
                color: Colors.white,
                height: 1,
                width: double.infinity,
              ),
              Expanded(flex: 1,
                child: mate.Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "View more details",
                      style: FluentTheme.of(context)
                          .typography
                          .title!
                          .copyWith(color: Colors.white,fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
