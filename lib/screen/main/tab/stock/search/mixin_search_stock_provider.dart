import 'package:get/get.dart';
import 'package:ttoss1/common/util/local_json.dart';
import 'package:ttoss1/screen/main/tab/stock/vo_simple_stock.dart';

abstract mixin class SearchStockProvider {
  late final searchStockData = Get.find<SearchStockData>();
}

class SearchStockData extends GetxController {
  List<SimpleStock> stockList = [];
  RxList<String> searchHistoryList = <String>[].obs;
  RxList<SimpleStock> autoCompleteList = <SimpleStock>[].obs;

  @override
  void onInit() {
    searchHistoryList.addAll(['삼성전자', 'LG전자', '현대차', '넷플리스']);
    loadLocalStockJson();
    super.onInit();
  }

  Future<void> loadLocalStockJson() async {
    final jsonList = await LocalJson.getObjectList<SimpleStock>('stock_list.json');
    stockList.addAll(jsonList);
  }

  void search(String keyword) {
    if (keyword.isEmpty) {
      autoCompleteList.clear();
      return;
    }

    autoCompleteList.value = stockList.where((e) => e.name.toLowerCase().contains(keyword.toLowerCase())).toList();
  }

  void removeHistory(String name) {
    searchHistoryList.remove(name);
  }

  void addHistory(String name) {
    if (!searchHistoryList.contains(name)) {
      searchHistoryList.add(name);
    }
  }
}
