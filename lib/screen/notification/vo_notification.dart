import 'package:ttoss1/screen/notification/e_notification_type.dart';

class NotificationVo {
  final NotificationType type;
  final String title;
  final DateTime time;
  bool isRead = false;

  NotificationVo(
    this.type,
    this.title,
    this.time, {
    this.isRead = false,
  });
}
