import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/benefit/vo_benefit.dart';
import 'package:flutter/material.dart';

class BenefitItem extends StatelessWidget {
  final BenefitVo benefit;

  const BenefitItem(this.benefit, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(benefit.type.iconPath, width: 50),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            benefit.title.text.size(14).make(),
            benefit.subTitle.text.size(14).blue600.make(),
          ],
        ).px12(),
      ],
    ).py12();
  }
}
