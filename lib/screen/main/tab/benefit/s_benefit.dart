import 'package:flutter/material.dart';
import 'package:ttoss1/common/common.dart';
import 'package:ttoss1/common/constant/app_constant.dart';
import 'package:ttoss1/common/widget/w_arrow.dart';
import 'package:ttoss1/screen/main/tab/benefit/dummy_benefit.dart';
import 'package:ttoss1/screen/main/tab/benefit/w_benefit_item.dart';

class BenefitScreen extends StatelessWidget {
  const BenefitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        height30,
        '혜택'.text.size(18).bold.make(),
        height10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            '내 포인트'.text.size(16).color(context.appColors.lessImportantText).make(),
            emptyExpanded,
            "${NumberFormat('#,###').format(1500)}점".text.color(context.appColors.lessImportantText).size(16).make().pOnly(right: 20),
            Arrow(color: context.appColors.lessImportantText)
          ],
        ).py12(),
        '혜택 더 받기'.text.size(16).white.bold.make().py12(),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: kBottomNavigationBarHeight),
            child: Container(
              color: context.appColors.benefitBackground,
              child: Column(
                children: [
                  ...benefitDummy.map((e) => BenefitItem(e)).toList(),
                  ...benefitDummy.map((e) => BenefitItem(e)).toList()
                ],
              ),
            ),
        ))
      ],
    ).pSymmetric(h: 10);
  }
}
