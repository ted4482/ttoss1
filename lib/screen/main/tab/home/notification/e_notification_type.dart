import 'package:fast_app_base/common/common.dart';

enum NotificationType {
  idea('$basePath/notification/notification_idea.png', '오늘의 머니팁'),
  luck('$basePath/notification/notification_luck.png', '행운복권'),
  people('$basePath/notification/notification_people.png', '공동구매'),
  stock('$basePath/notification/notification_stock.png', '주식'),
  toss('$basePath/notification/notification_toss.png', '토스페이'),
  walk('$basePath/notification/notification_walk.png', '만보기'),
  ;

  final String iconPage;
  final String name;

  const NotificationType(this.iconPage, this.name);
}
