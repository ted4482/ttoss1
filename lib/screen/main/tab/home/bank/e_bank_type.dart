import 'package:ttoss1/common/common.dart';

enum BankType {
  shinhan("$basePath/bank/bank_shinhan.png", "신한은행"),
  kakao("$basePath/bank/bank_kakao.png", "카카오뱅크"),
  toss("$basePath/bank/bank_toss.png", "토스뱅크"),
  investment("$basePath/bank/bank_investment.png", "투자");

  final String iconPath;
  final String name;

  const BankType(this.iconPath, this.name);
}
