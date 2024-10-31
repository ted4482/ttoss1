import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/home/notification/dummy_notification.dart';
import 'package:fast_app_base/screen/main/tab/home/notification/w_notification_item.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: '알림'.text.make(),
            pinned: true,
            expandedHeight: kToolbarHeight,
            backgroundColor: AppColors.veryDarkGrey,
            scrolledUnderElevation: 0,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => NotificationItem(dummyNotification[index]),
              childCount: dummyNotification.length,
            ),
          ),
        ],
      ),
    );
  }
}
