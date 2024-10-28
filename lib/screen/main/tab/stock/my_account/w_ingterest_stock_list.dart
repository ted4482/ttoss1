import 'package:flutter/material.dart';
import 'package:ttoss1/screen/main/tab/stock/my_account/dummy_interest_stock.dart';
import 'package:ttoss1/screen/main/tab/stock/my_account/w_stock_item.dart';

class InterestStockList extends StatelessWidget {
  const InterestStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [...dummyInterestStock.map((e) => StockItem(e)).toList()],
    );
  }
}
