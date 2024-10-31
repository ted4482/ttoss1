import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_big_button.dart';
import 'package:fast_app_base/screen/main/tab/home/dummy_bank_account.dart';
import 'package:fast_app_base/screen/main/tab/home/notification/s_notification.dart';
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: kToolbarHeight,
            backgroundColor: AppColors.veryDarkGrey,
            scrolledUnderElevation: 0,
            actions: [
              Image.asset('$basePath/icon/toss.png', height: kToolbarHeight - 10),
              emptyExpanded,
              Image.asset('$basePath/icon/map_point.png', height: kToolbarHeight - 20),
              width10,
              Tap(
                onTap: () => Nav.push(const NotificationScreen()),
                child: Badge(child: Image.asset('$basePath/icon/notification.png', height: kToolbarHeight - 20)).pOnly(right: 30),
              ),
            ],
          ),
          const SliverToBoxAdapter(child: BigButton('토스뱅크')),
          SliverToBoxAdapter(child: '자산'.text.size(16).make().p12()),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return BankAccountItem(dummyBankAccount[index]);
              },
              childCount: dummyBankAccount.length,
            ),
          ),
          const SliverToBoxAdapter(child: height50),
        ],
      ),
    );
  }
}
