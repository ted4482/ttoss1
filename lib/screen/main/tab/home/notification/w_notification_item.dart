import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/home/notification/vo_notification.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationItem extends StatelessWidget {
  final NotificationVo notification;

  const NotificationItem(this.notification, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: notification.isRead ? AppColors.moreDarkGrey : Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Tap(
            onTap: () {
              context.showSnackbar(notification.title);
            }, 
            child: Row(
            children: [
              Image.asset(notification.type.iconPage, width: 30),
              notification.type.name.text.color(AppColors.lightDarkGrey).make(),
              emptyExpanded,
              timeago.format(notification.time, locale: 'ko').text.color(AppColors.lightDarkGrey).make(),
            ],
          ),),
          notification.title.text.make().pOnly(left: 30),
        ],
      ).p12(),
    );
  }
}
