import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttoss1/screen/main/tab/stock/search/f_popular_stock_list.dart';
import 'package:ttoss1/screen/main/tab/stock/search/f_search_stock_history.dart';
import 'package:ttoss1/screen/main/tab/stock/search/mixin_search_stock_provider.dart';
import 'package:ttoss1/screen/main/tab/stock/search/w_search_auto_complete_list.dart';
import 'package:ttoss1/screen/main/tab/stock/search/w_search_stock_app_bar.dart';

class SearchStockScreen extends StatefulWidget {
  const SearchStockScreen({super.key});

  @override
  State<SearchStockScreen> createState() => _SearchStockScreenState();
}

class _SearchStockScreenState extends State<SearchStockScreen> with SearchStockProvider {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).unfocus();
    });

    Get.put(SearchStockData());

    textEditingController.addListener(() {
      searchStockData.search(textEditingController.text);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: SearchStockAppBar(textEditingController: textEditingController),
          body: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Obx(
              () => searchStockData.autoCompleteList.isEmpty
                  ? ListView.builder(
                      itemBuilder: (context, index) {
                        return const Column(
                          children: [
                            SearchStockHistoryFragment(),
                            PopularStockListFragment(),
                          ],
                        );
                      },
                      // itemCount: 1,
                    )
                  : SearchAutoCompleteList(textEditingController),
            ),
          )),
    );
  }
}
