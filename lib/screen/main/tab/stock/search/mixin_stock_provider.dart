import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:ttoss1/app.dart';
import 'package:ttoss1/common/common.dart';

abstract mixin class StockProvider {
   int get currentPrice;

   int get yesterdayPrice;

   double get todayPercentage => ((currentPrice - yesterdayPrice) / yesterdayPrice * 100).toPrecision(2);

   String get todayPercentageString => "$symbol$todayPercentage%";

   bool get isPlus => currentPrice > yesterdayPrice;

   bool get isSame => currentPrice == yesterdayPrice;

   bool get isMinus => currentPrice < yesterdayPrice;

   String get symbol => isPlus ? "+" : isMinus ? "-" : "";

   Color? getPercentageColor(BuildContext context) =>
      isPlus ? Colors.red : isMinus ? Colors.blue : context.appColors.lessImportantText;
}