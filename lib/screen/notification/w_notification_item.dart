import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:ttoss1/common/common.dart';
import 'package:ttoss1/screen/notification/vo_notification.dart';

class NotificationItem extends StatefulWidget {
  final NotificationVo notification;
  final VoidCallback onTap;

  const NotificationItem({
    super.key,
    required this.notification,
    required this.onTap,
  });

  @override
  State<NotificationItem> createState() => _NotificationItemState();
}

class _NotificationItemState extends State<NotificationItem> {
  static const iconSize = 25.0;

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        color: widget.notification.isRead ? context.appColors.appBarBackground : context.appColors.unreadNotification,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(widget.notification.type.imagePath, width: iconSize, height: iconSize),
                widget.notification.type.name.text.size(12).color(context.appColors.lessImportantText).make().pOnly(bottom: 2),
                emptyExpanded,
                timeago.format(widget.notification.time, locale: context.locale.languageCode).text.size(12).color(context.appColors.lessImportantText).make().pOnly(bottom: 2),
              ],
            ),
            widget.notification.title.text.color(context.appColors.text).make().pOnly(left: iconSize),
          ],
        ),
      ),
    );
  }
}
