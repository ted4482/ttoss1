import 'package:flutter/material.dart';
import 'package:ttoss1/common/cli_common.dart';
import 'package:ttoss1/common/common.dart';
import 'package:ttoss1/common/constant/app_constant.dart';
import 'package:ttoss1/common/widget/w_big_button.dart';
import 'package:ttoss1/screen/main/tab/home/bank/dummy_bank_account.dart';
import 'package:ttoss1/screen/main/tab/home/bank/f_bank_account.dart';
import 'package:ttoss1/screen/main/tab/home/f_home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBarFragment(),
      body: RefreshIndicator(
        // edgeOffset: 30,
        onRefresh: () async => await sleepAsync(1000.ms),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              height10,
              BigButton('토스뱅크', onTap: () => debugPrint('토스뱅크를 눌렀어요.')),
              '자산'.text.bold.white.size(15).make().pSymmetric(h: 12, v: 5),
              Column(children: bankAccountDummy.map((e) => BankAccountFragment(e)).toList())
            ],
          ),
        ),
      ),
    );
  }
}
