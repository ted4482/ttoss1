import 'package:flutter/material.dart';
import 'package:ttoss1/common/common.dart';
import 'package:ttoss1/screen/notification/d_notification.dart';
import 'package:ttoss1/screen/notification/dummy_notification.dart';
import 'package:ttoss1/screen/notification/w_notification_item.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: "알림".text.color(Colors.white).bold.make().pOnly(bottom: 6),
            backgroundColor: context.appColors.appBarBackground,
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => NotificationItem(
                notification: notificationDummy[index],
                onTap: () {
                  NotificationDialog(notificationDummy[index]).show();
                },
              ),
              childCount: notificationDummy.length,
            ),
          ),
        ],
      ),
    );
  }
}
