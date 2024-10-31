import 'package:fast_app_base/common/common.dart';

enum BankType {
  shinhan('$basePath/bank/bank_shinhan.png', '신한은행 통장', 6363623460),
  kakao('$basePath/bank/bank_kakao.png', '카카오뱅크 통장', 1324124124513560),
  toss('$basePath/bank/bank_toss.png', '입출금통장', 1112423453141230),
  ;

  final String iconPath;
  final String name;
  final int balance;

  const BankType(this.iconPath, this.name, this.balance);
}
