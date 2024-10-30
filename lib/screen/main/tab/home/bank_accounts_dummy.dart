import 'package:fast_app_base/screen/main/tab/home/e_bank_type.dart';
import 'package:fast_app_base/screen/main/tab/home/vo_bank_account.dart';

const bankAccountShinhan1 = BankAccount(
  bankType: BankType.shinhan,
  name: "신한 주거래 우대통장(저축예금)",
  balance: 1234567890,
);
const bankAccountShinhan2 = BankAccount(
  bankType: BankType.shinhan,
  name: "신한 주거래 우대통장(저축예금)",
  balance: 4567890123,
);
const bankAccountShinhan3 = BankAccount(
  bankType: BankType.shinhan,
  name: "신한 주거래 우대통장(저축예금)",
  balance: 7890123456,
);
const bankAccountKakao = BankAccount(
  bankType: BankType.kakao,
  name: "카카오뱅크 통장",
  balance: 123456789,
);
const bankAccountToss = BankAccount(
  bankType: BankType.toss,
  name: "입출금통장",
  balance: 9078907890789,
);

final dummyBankAccount = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountKakao,
  bankAccountToss,
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountKakao,
  bankAccountToss,
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountKakao,
  bankAccountToss,
];
