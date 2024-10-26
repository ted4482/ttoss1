import 'package:ttoss1/screen/main/tab/home/bank/e_bank_type.dart';

class BankAccountVo {
  final BankType type;
  final String title;
  final int balance;

  const BankAccountVo(
    this.type,
    this.title,
    this.balance,
  );
}
