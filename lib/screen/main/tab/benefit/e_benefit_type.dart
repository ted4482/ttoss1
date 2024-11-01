import 'package:fast_app_base/common/common.dart';

enum BenefitType {
  friend('친구', '$basePath/benefit/benefit_01.png'),
  mission('미션', '$basePath/benefit/benefit_02.png'),
  luck('행운복권', '$basePath/benefit/benefit_03.png'),
  live('라이브 쇼핑', '$basePath/benefit/benefit_04.png'),
  quiz('퀴즈', '$basePath/benefit/benefit_05.png'),
  walk('만보기', '$basePath/benefit/benefit_06.png'),
  ;

  final String name;
  final String iconPath;

  const BenefitType(this.name, this.iconPath);
}
