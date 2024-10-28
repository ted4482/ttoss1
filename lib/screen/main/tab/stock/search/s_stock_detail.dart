import 'package:flutter/material.dart';
import 'package:ttoss1/common/common.dart';

class StockDetailScreen extends StatelessWidget {
  final String stockName;

  const StockDetailScreen(this.stockName, {super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: stockName.text.size(20).white.make(),
        ),
        body: Column(
          children: ["주식 상세".text.size(14).white.make()],
        ).p20(),
      ),
    );
  }
}
