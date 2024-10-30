import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_big_button.dart';
import 'package:fast_app_base/screen/main/tab/home/bank_accounts_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/w_bank_account_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image.asset('$basePath/icon/toss.png', height: kToolbarHeight - 10),
          emptyExpanded,
          Image.asset('$basePath/icon/map_point.png', height: kToolbarHeight - 20),
          width10,
          Badge(child: Image.asset('$basePath/icon/notification.png', height: kToolbarHeight - 20)).pOnly(right: 30),
        ],
      ),
      body: ListView(
        children: [
          const BigButton('토스뱅크'),
          '자산'.text.size(16).make().pOnly(left: 12, top: 12),
          ...dummyBankAccount.map((e) => BankAccountItem(e)),
        ],
      ),
    );
  }
}
