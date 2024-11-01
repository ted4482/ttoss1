import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/screen/main/tab/benefit/dummy_benefit.dart';
import 'package:fast_app_base/screen/main/tab/benefit/w_benefit_item.dart';
import 'package:flutter/material.dart';

class BenefitScreen extends StatelessWidget {
  const BenefitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(title: '혜택'.text.bold.make()),
          SliverToBoxAdapter(
            child: Row(
              children: [
                '내 포인트'.text.color(AppColors.lightDarkGrey).make(),
                emptyExpanded,
                NumberFormat("#,###점").format(234532453).text.make(),
                width10,
                const Arrow(),
              ],
            ).p12(),
          ),
          SliverToBoxAdapter(child: '혜택 더 받기'.text.make().p12()),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => BenefitItem(dummyBenefit[index]),
              childCount: dummyBenefit.length,
            ),
          ),
          const SliverToBoxAdapter(child: height50),
        ],
      ),
    );
  }
}
