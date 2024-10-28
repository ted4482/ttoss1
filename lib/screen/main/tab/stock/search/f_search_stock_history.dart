import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttoss1/common/common.dart';
import 'package:ttoss1/screen/main/tab/stock/search/mixin_search_stock_provider.dart';
import 'package:ttoss1/screen/main/tab/stock/search/s_stock_detail.dart';

class SearchStockHistoryFragment extends StatefulWidget {
  const SearchStockHistoryFragment({super.key});

  @override
  State<SearchStockHistoryFragment> createState() => _SearchStockHistoryFragmentState();
}

class _SearchStockHistoryFragmentState extends State<SearchStockHistoryFragment> with SearchStockProvider {
  @override
  Widget build(BuildContext context) {
    bool isOffstage = searchStockData.searchHistoryList.isEmpty;

    return Obx(
      () => Offstage(
        offstage: isOffstage,
        child: SizedBox(
          height: kToolbarHeight,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              String stockName = searchStockData.searchHistoryList[index];

              return Container(
                margin: const EdgeInsets.only(right: 8),
                child: Row(
                  children: [
                    Tap(
                      onTap: () => Nav.push(StockDetailScreen(stockName)),
                      child: stockName.text.white.make(),
                    ),
                    Tap(
                      onTap: () {
                        searchStockData.removeHistory(stockName);
                        searchStockData.searchHistoryList.isEmpty ? isOffstage = true: false;
                      },
                      child: const Icon(Icons.close),
                    ),
                  ],
                ).box.withRounded(value: 6).p8.color(AppColors.darkGrey).make(),
              );
            },
            itemCount: searchStockData.searchHistoryList.length,
          ),
        ),
      ),
    );
  }
}
