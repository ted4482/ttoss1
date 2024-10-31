import 'package:fast_app_base/screen/main/tab/home/notification/e_notification_type.dart';

class NotificationVo {
  final NotificationType type;
  final DateTime time;
  final String title;
  final bool isRead;

  NotificationVo(this.type, this.time, this.title, this.isRead);
}
