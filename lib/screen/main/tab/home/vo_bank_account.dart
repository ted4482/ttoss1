import 'package:fast_app_base/screen/main/tab/home/e_bank_type.dart';

class BankAccount {
  final BankType bankType;
  final String name;
  final int balance;

  const BankAccount({
    required this.bankType,
    required this.name,
    required this.balance,
  });
}
