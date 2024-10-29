import 'package:ttoss1/common/data/preference/item/nullable_preference_item.dart';
import 'package:ttoss1/common/data/preference/item/rx_preference_item.dart';
import 'package:ttoss1/common/data/preference/item/rxn_preference_item.dart';
import 'package:ttoss1/common/theme/custom_theme.dart';

class Prefs {
  static final appTheme = NullablePreferenceItem<CustomTheme>('appTheme');
  static final isPushOnRx = RxPreferenceItem<bool, RxBool>('isPushOnRx', false);
  static final sliderPositionRx = RxPreferenceItem<double, RxDouble>('sliderPositionRx', 0.0);
  static final birthdayRxn = RxnPreferenceItem<DateTime, Rxn<DateTime>>('birthdayRxn', null);
  static final number = RxPreferenceItem<int, Rx<int>>('number', 0);
}
