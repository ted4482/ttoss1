import 'package:ttoss1/screen/main/tab/stock/my_account/vo_popular_stock.dart';

class StockVo extends PopularStockVo {
  final String iconPath;

  StockVo({
    required this.iconPath,
    required super.name,
    required super.currentPrice,
    required super.yesterdayPrice,
  });
}
