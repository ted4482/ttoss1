import 'package:ttoss1/screen/main/tab/home/bank/e_bank_type.dart';
import 'package:ttoss1/screen/main/tab/home/bank/vo_bank_account.dart';

final bankAccountDummy = <BankAccountVo>[
  const BankAccountVo(BankType.shinhan, '신한 주거래 우대통장(저축은행)', 3000000),
  const BankAccountVo(BankType.shinhan, '저축예금', 30000000),
  const BankAccountVo(BankType.shinhan, '저축예금', 300000000),
  const BankAccountVo(BankType.kakao, '카카오뱅크 통장', 3000000),
  const BankAccountVo(BankType.kakao, '카카오뱅크 통장', 3000000),
  const BankAccountVo(BankType.kakao, '카카오뱅크 통장', 3000000),
  const BankAccountVo(BankType.toss, '입출금통장', 7000000),
  const BankAccountVo(BankType.toss, '입출금통장', 7000000),
  const BankAccountVo(BankType.toss, '입출금통장', 7000000),
  const BankAccountVo(BankType.investment, '주식', 7000000),
  const BankAccountVo(BankType.investment, '자동차', 7000000),
  const BankAccountVo(BankType.investment, '부동산', 7000000),
];
