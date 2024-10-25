import 'package:get/utils.dart';
import 'package:ttoss1/screen/notification/e_notification_type.dart';
import 'package:ttoss1/screen/notification/vo_notification.dart';

final notificationDummy = <NotificationVo>[
  NotificationVo(NotificationType.toss, "이번 주 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요.", DateTime.now().subtract(27.minutes)),
  NotificationVo(NotificationType.stock, "인적분할에 대해 알려드릴게요.", DateTime.now().subtract(1.hours)),
  NotificationVo(NotificationType.walk, "1000걸음 이상 걸었다면 포인트 받으세요.", DateTime.now().subtract(1.hours), isRead: true),
  NotificationVo(NotificationType.idea, "유럽 식품 물가가 치솟고 있어요.\n신동찬님, 유럽여행에 관심이 있다면 확인해보세요.", DateTime.now().subtract(8.hours)),
  NotificationVo(NotificationType.walk, "오늘 1000걸음을 넘겼어요. 포인트를 받아보세요.", DateTime.now().subtract(11.hours), isRead: true),
  NotificationVo(NotificationType.luck, "6월 5일, 행운복권이 도착했어요.", DateTime.now().subtract(12.hours)),
  NotificationVo(NotificationType.people, "띵동! 월요일 공동구매 보러가기", DateTime.now().subtract(1.days)),
];
