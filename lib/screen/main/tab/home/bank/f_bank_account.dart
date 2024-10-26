import 'package:flutter/material.dart';
import 'package:ttoss1/common/common.dart';
import 'package:ttoss1/common/widget/w_rounded_container.dart';
import 'package:ttoss1/screen/main/tab/home/bank/vo_bank_account.dart';

class BankAccountFragment extends StatelessWidget {
  final BankAccountVo bankAccount;

  const BankAccountFragment(this.bankAccount, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Image.asset(bankAccount.type.iconPath, width: 40),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          bankAccount.title.text.color(context.appColors.lessImportantText).size(14).make(),
          "${NumberFormat('#,###').format(bankAccount.balance)}원".text.bold.white.size(18).make(),
        ],
      ).p12(),
      emptyExpanded,
      RoundedContainer(radius: 10, child: '송금'.text.bold.white.make())
    ]).pSymmetric(h: 10);
  }
}
