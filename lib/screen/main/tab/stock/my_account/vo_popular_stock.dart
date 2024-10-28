import 'package:ttoss1/screen/main/tab/stock/search/mixin_stock_provider.dart';
import 'package:ttoss1/screen/main/tab/stock/vo_simple_stock.dart';

class PopularStockVo extends SimpleStock with StockProvider {
  @override
  final int currentPrice;
  @override
  final int yesterdayPrice;

  PopularStockVo({
    required String name,
    required this.currentPrice,
    required this.yesterdayPrice,
  }) : super(name);
}
