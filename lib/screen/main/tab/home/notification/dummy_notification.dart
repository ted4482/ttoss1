import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/home/notification/e_notification_type.dart';
import 'package:fast_app_base/screen/main/tab/home/notification/vo_notification.dart';

final dummyNotification = [
  NotificationVo(NotificationType.toss, DateTime.now(), '이번 주 영화', false),
  NotificationVo(NotificationType.stock, DateTime.now().subtract(29.minutes), '인적분한', false),
  NotificationVo(NotificationType.walk, DateTime.now().subtract(1.hours), '100 걸음 이상', true),
  NotificationVo(NotificationType.idea, DateTime.now().subtract(2.hours), '유럽 물가 인상', true),
  NotificationVo(NotificationType.walk, DateTime.now().subtract(8.hours), '1000 걸음 이상', false),
  NotificationVo(NotificationType.luck, DateTime.now().subtract(12.hours), '복권 도착', false),
  NotificationVo(NotificationType.people, DateTime.now().subtract(1.days), '공동 구매 고고', false),
  NotificationVo(NotificationType.stock, DateTime.now().subtract(29.minutes), '인적분한', false),
  NotificationVo(NotificationType.walk, DateTime.now().subtract(1.hours), '100 걸음 이상', true),
  NotificationVo(NotificationType.idea, DateTime.now().subtract(2.hours), '유럽 물가 인상', true),
  NotificationVo(NotificationType.walk, DateTime.now().subtract(8.hours), '1000 걸음 이상', false),
  NotificationVo(NotificationType.luck, DateTime.now().subtract(12.hours), '복권 도착', false),
  NotificationVo(NotificationType.people, DateTime.now().subtract(1.days), '공동 구매 고고', false),
  NotificationVo(NotificationType.stock, DateTime.now().subtract(29.minutes), '인적분한', false),
  NotificationVo(NotificationType.walk, DateTime.now().subtract(1.hours), '100 걸음 이상', true),
  NotificationVo(NotificationType.idea, DateTime.now().subtract(2.hours), '유럽 물가 인상', true),
  NotificationVo(NotificationType.walk, DateTime.now().subtract(8.hours), '1000 걸음 이상', false),
  NotificationVo(NotificationType.luck, DateTime.now().subtract(12.hours), '복권 도착', false),
  NotificationVo(NotificationType.people, DateTime.now().subtract(1.days), '공동 구매 고고', false),
];