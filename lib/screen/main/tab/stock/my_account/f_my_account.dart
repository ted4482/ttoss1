import 'package:flutter/material.dart';
import 'package:ttoss1/common/common.dart';
import 'package:ttoss1/common/constant/app_constant.dart';
import 'package:ttoss1/common/widget/w_arrow.dart';
import 'package:ttoss1/common/widget/w_big_button.dart';
import 'package:ttoss1/common/widget/w_rounded_container.dart';
import 'package:ttoss1/screen/main/tab/stock/my_account/w_ingterest_stock_list.dart';

class MyAccountFragment extends StatelessWidget {
  const MyAccountFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        height10,
        "계좌".text.white.make().px12(),
        Row(
          children: [
            "443원".text.white.size(24).bold.make(),
            width10,
            const Arrow(),
            emptyExpanded,
            RoundedContainer(radius: 10, child: "채우기".text.size(12).white.make())
          ],
        ).px12(),
        const Line().py12(),
        BigButton('주문내역', onTap: () {}),
        BigButton('판매수익', onTap: () {}),
        const Line().py12(),
        Row(
          children: [
            '관심주식'.text.white.make(),
            emptyExpanded,
            "편집하기".text.white.color(context.appColors.lessImportantText).make(),
          ],
        ).p12(),
        Container(
          color: Colors.black,
          child: Column(
            children: [
              Row(
                children: [
                  "기본".text.white.make(),
                  emptyExpanded,
                  const Arrow(direction: AxisDirection.up),
                ],
              ).p12(),
              const InterestStockList(),
            ],
          ),
        )
      ],
    );
  }
}
