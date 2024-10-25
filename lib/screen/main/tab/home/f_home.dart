import 'package:flutter/material.dart';
import 'package:ttoss1/common/common.dart';
import 'package:ttoss1/screen/main/tab/home/f_home_app_bar.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          color: context.appColors.appBarBackground,
          child: const HomeAppBarFragment(),
        ),
      ],
    );
  }
}
