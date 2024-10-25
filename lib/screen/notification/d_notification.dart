import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';
import 'package:ttoss1/common/common.dart';
import 'package:ttoss1/screen/notification/vo_notification.dart';
import 'package:ttoss1/screen/notification/w_notification_item.dart';

class NotificationDialog extends DialogWidget {
  final NotificationVo notification;

  NotificationDialog(
    this.notification, {
    super.key,
    super.animation = NavAni.Bottom,
    super.barrierDismissible = false,
  });

  @override
  DialogState<NotificationDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends DialogState<NotificationDialog> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          NotificationItem(notification: widget.notification, onTap: widget.hide)
        ],
      ),
    );
  }
}
