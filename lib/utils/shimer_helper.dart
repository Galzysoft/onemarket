import 'package:one_market/utils/border_radius.dart';
import 'package:one_market/widgets/space.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart' as mate;

import '../constants/constants_and_imports.dart';

class ShimmerHelper {
  static Widget buildBasicShimmer(
      {double height = double.infinity,
      double width = double.infinity,
      double radius = 6}) {
    return Shimmer.fromColors(
      baseColor: mate.Colors.grey.shade400,
      highlightColor: mate.Colors.grey.shade100,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecorations.buildBoxDecoration_1(radius: radius),
      ),
    );
  }

  static Widget homepageShimmer() {
    return ScaffoldPage(
      header: buildBasicShimmer(),
      content: Container(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          SpaceHeight(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(child: buildBasicShimmer(height: 200)),
              SpaceWidth(20),
              Expanded(child: buildBasicShimmer(height: 200)),
              SpaceWidth(20),
              Expanded(child: buildBasicShimmer(height: 200)),
              SpaceWidth(20),
              Expanded(child: buildBasicShimmer(height: 200)),
            ],
          ),
          SpaceHeight(12),
          Expanded(
            child: Row(
              children: [
                //    Expanded(child: Acrylic(luminosityAlpha: 0.6,tint: colors.primary_color,
                //        child: StatisticsChartPage(chartname: "Stats"))),
                // ,
                Expanded(child: buildBasicShimmer(height: 400)),
              ],
            ),
          )
        ]),
      ),
    );
  }

  static Widget buildBasicShimmerCustomRadius(
      {double height = double.infinity,
      double width = double.infinity,
      BorderRadius radius = BorderRadius.zero,
      Color color = Colors.grey}) {
    return Shimmer.fromColors(
      baseColor: color,
      highlightColor: mate.Colors.grey.shade100,
      child: Container(
        height: height,
        width: width,
        decoration:
            BoxDecoration(borderRadius: radius, color: Colors.grey[300]),
      ),
    );
  }

  buildListShimmer({item_count = 10, item_height = 100.0}) {
    return ListView.builder(
      itemCount: item_count,
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
              top: 0.0, left: 16.0, right: 16.0, bottom: 16.0),
          child: ShimmerHelper.buildBasicShimmer(height: item_height),
        );
      },
    );
  }

  // buildProductGridShimmer({scontroller, item_count = 10}) {
  //
  //   return MasonryGridView.count(
  //       crossAxisCount: 2,
  //       mainAxisSpacing: 14,
  //       crossAxisSpacing: 14,
  //       itemCount: item_count,
  //       shrinkWrap: true,
  //       padding: EdgeInsets.only(top:20.0,bottom: 10,left: 18,right:18),
  //       physics: NeverScrollableScrollPhysics(),
  //       itemBuilder: (context, index) {
  //         return Shimmer.fromColors(
  //           baseColor: Colors.grey.shade300,
  //           highlightColor: Colors.grey.shade100,
  //           child: Container(
  //             height: (index +1) % 2 != 0 ? 250 : 300,
  //             width: double.infinity,
  //             decoration: BoxDecorations.buildBoxDecoration_1(),
  //           ),
  //         );
  //       }
  //   );
  //
  //
  // }

  buildSquareGridShimmer({scontroller, item_count = 10}) {
    return GridView.builder(
      itemCount: item_count,
      controller: scontroller,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1),
      padding: EdgeInsets.all(8),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Shimmer.fromColors(
            baseColor: mate.Colors.grey.shade300,
            highlightColor: mate.Colors.grey.shade100,
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecorations.buildBoxDecoration_1(),
            ),
          ),
        );
      },
    );
  }

  buildHorizontalGridShimmerWithAxisCount(
      {item_count = 10,
      int crossAxisCount = 2,
      crossAxisSpacing = 10.0,
      mainAxisSpacing = 10.0,
      mainAxisExtent = 100.0,
      controller}) {
    return GridView.builder(
        padding: const EdgeInsets.all(16),
        scrollDirection: Axis.horizontal,
        controller: controller,
        itemCount: item_count,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: crossAxisSpacing,
            mainAxisSpacing: 10,
            mainAxisExtent: mainAxisExtent),
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: mate.Colors.grey.shade300,
            highlightColor: mate.Colors.grey.shade100,
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecorations.buildBoxDecoration_1(),
            ),
          );
        });
  }

  buildSeparatedHorizontalListShimmer(
      {double separationWidth = 16.0,
      int itemCount = 10,
      double itemHeight = 120}) {
    return ListView.separated(
      padding: const EdgeInsets.all(16.0),
      separatorBuilder: (context, index) => SizedBox(
        width: separationWidth,
      ),
      itemCount: itemCount,
      scrollDirection: Axis.horizontal,
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: mate.Colors.grey.shade300,
          highlightColor: mate.Colors.grey.shade100,
          child: Container(
            height: itemHeight,
            width: double.infinity,
            decoration: BoxDecorations.buildBoxDecoration_1(),
          ),
        );
      },
    );
  }
}
