import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BigButton extends StatelessWidget {
  final String title;
  final double borderRadius;

  const BigButton(
    this.title, {
    this.borderRadius = 0.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(),
      height: 80,
      decoration: BoxDecoration(color: AppColors.moreDarkGrey, borderRadius: BorderRadius.circular(borderRadius)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [title.text.bold.size(24).make(), const Arrow(size: 20).pOnly(top: 10)],
      ).marginSymmetric(horizontal: 20),
    );
  }
}
