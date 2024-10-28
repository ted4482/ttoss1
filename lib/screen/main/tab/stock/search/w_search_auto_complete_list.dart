import 'package:flutter/material.dart';
import 'package:ttoss1/common/common.dart';
import 'package:ttoss1/screen/main/tab/stock/search/mixin_search_stock_provider.dart';
import 'package:ttoss1/screen/main/tab/stock/search/s_stock_detail.dart';

class SearchAutoCompleteList extends StatelessWidget with SearchStockProvider {
  final TextEditingController textEditingController;

  SearchAutoCompleteList(this.textEditingController, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      final stock = searchStockData.autoCompleteList[index];
      final stockName = stock.name;

      return Tap(
        onTap: () {
          textEditingController.clear();
          searchStockData.addHistory(stockName);
          Nav.push(StockDetailScreen(stockName));
        },
        child: stockName.text.white.make().p20(),);
    },
    itemCount: searchStockData.autoCompleteList.length,);
  }
}
