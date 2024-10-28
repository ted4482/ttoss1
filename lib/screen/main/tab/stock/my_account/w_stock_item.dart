import 'package:flutter/material.dart';
import 'package:ttoss1/common/common.dart';
import 'package:ttoss1/common/constant/app_constant.dart';
import 'package:ttoss1/screen/main/tab/stock/vo_stock.dart';

class StockItem extends StatelessWidget {
  final StockVo stock;

  const StockItem(this.stock, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(stock.iconPath, width: 50),
        width10,
        stock.name.text.white.make(),
        emptyExpanded,
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            stock.todayPercentageString.text.color(stock.getPercentageColor(context)).make(),
            NumberFormat("#,###").format(stock.currentPrice).text.color(context.appColors.lessImportantText).make(),
          ],
        ),
      ],
    ).p12();
  }
}
