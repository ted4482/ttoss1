import 'package:flutter/material.dart';
import 'package:ttoss1/common/common.dart';
import 'package:ttoss1/common/constant/app_constant.dart';
import 'package:ttoss1/screen/notification/s_notification.dart';

class HomeAppBarFragment extends StatelessWidget {
  const HomeAppBarFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Tap(
          onTap: () => context.showSnackbar("Welcome Toos!"),
          child: Image.asset("$basePath/icon/toss.png", height: 30),
        ),
        emptyExpanded,
        Tap(
          onTap: () => context.showSnackbar("Map Point!"),
          child: Image.asset("$basePath/icon/map_point.png", height: 30),
        ),
        width20,
        Tap(
          onTap: () => {Nav.push(const NotificationScreen())},
          child: Stack(
            children: [
              Image.asset("$basePath/icon/notification.png", height: 30),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ).px20();
  }
}
