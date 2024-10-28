import 'package:flutter/material.dart';
import 'package:ttoss1/common/common.dart';
import 'package:ttoss1/common/constant/app_constant.dart';
import 'package:ttoss1/common/dart/extension/datetime_extension.dart';
import 'package:ttoss1/screen/main/tab/stock/search/dummy_popular_stock.dart';

class PopularStockListFragment extends StatelessWidget {
  const PopularStockListFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "인기 검색".text.bold.white.make(),
            "오늘 ${DateTime.now().formattedTime} 기준".text.color(context.appColors.lessImportantText).make(),
          ],
        ).p20(),
        ...dummyPopularStock.mapIndexed((e, index) {
          return Row(
            children: [
              SizedBox(width: 40, child: "${index + 1}".text.white.center.make()),
              width20,
              e.name.text.white.make(),
              emptyExpanded,
              e.todayPercentageString.text.color(e.getPercentageColor(context)).make(),
            ],
          ).p20();
        }),
      ],
    );
  }
}
