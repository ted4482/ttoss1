import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_custom_elevated_button.dart';
import 'package:fast_app_base/screen/main/tab/home/vo_bank_account.dart';
import 'package:flutter/material.dart';

class BankAccountItem extends StatelessWidget {
  final BankAccount bankAccount;

  const BankAccountItem(
    this.bankAccount, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(bankAccount.bankType.iconPath, width: 50),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            bankAccount.name.text.size(14).make(),
            NumberFormat('#,###원').format(bankAccount.balance).text.size(18).make(),
          ],
        ).px8(),
        emptyExpanded,
        const CustomElevatedButton('송금'),
      ],
    ).pSymmetric(h:12, v: 15);
  }
}
