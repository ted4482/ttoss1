import 'package:flutter/material.dart';
import 'package:ttoss1/common/common.dart';
import 'package:ttoss1/screen/main/tab/benefit/vo_benefit.dart';

class BenefitItem extends StatelessWidget {
  final BenefitVo benefit;
  
  const BenefitItem(this.benefit, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(benefit.iconPath, width: 50),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          benefit.title.text.size(14).make(),
          benefit.linkText.text.size(14).blue500.make()
        ],
      ).p16()
    ],);
  }
}
