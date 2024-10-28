import 'package:flutter/material.dart';
import 'package:ttoss1/common/common.dart';
import 'package:ttoss1/common/constant/app_constant.dart';
import 'package:ttoss1/screen/main/tab/stock/f_todayDiscovery.dart';
import 'package:ttoss1/screen/main/tab/stock/my_account/f_my_account.dart';
import 'package:ttoss1/screen/main/tab/stock/search/s_search_stock.dart';

class StockScreen extends StatefulWidget {
  const StockScreen({super.key});

  @override
  State<StockScreen> createState() => _StockScreenState();
}

class _StockScreenState extends State<StockScreen> with SingleTickerProviderStateMixin {
  late final TabController tabController = TabController(length: 2, vsync: this);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.veryDarkGrey,
            pinned: true,
            actions: [
              Tap(
                onTap: () {
                  Nav.push(const SearchStockScreen());
                },
                child: Image.asset("$basePath/icon/stock_search.png", width: 30),
              ),
              Image.asset("$basePath/icon/stock_calendar.png", width: 30),
              Image.asset("$basePath/icon/stock_settings.png", width: 30),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _title,
                _tabBar,
                currentIndex == 0 ? const MyAccountFragment() : const TodayDiscoveryFragment(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget get _title => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          "토스증권".text.bold.white.size(24).make(),
          width20,
          "S&P 500".text.color(context.appColors.lessImportantText).size(12).make(),
          width10,
          NumberFormat("#,###.##").format(3919.29).text.bold.red500.size(12).make(),
        ],
      ).px12();

  Widget get _tabBar => TabBar(
      labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      labelPadding: const EdgeInsets.symmetric(vertical: 16),
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorPadding: const EdgeInsets.symmetric(horizontal: 5),
      controller: tabController,
      tabs: [
        "내 주식".text.white.make(),
        "오늘의 발견".text.white.make(),
      ],
      onTap: (index) => setState(() => currentIndex = index));
}
