import 'package:ttoss1/common/common.dart';

enum NotificationType {
  toss("토스페이", "$basePath/notification/notification_toss.png"),
  stock("토스증권 컨텐츠", "$basePath/notification/notification_stock.png"),
  walk("만보기", "$basePath/notification/notification_walk.png"),
  idea("오늘의 머니 팁", "$basePath/notification/notification_idea.png"),
  luck("행운복권", "$basePath/notification/notification_luck.png"),
  people("토스 공동구매", "$basePath/notification/notification_people.png");

  final String name;
  final String imagePath;

  const NotificationType(this.name, this.imagePath);
}
