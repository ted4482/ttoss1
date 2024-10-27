import 'package:ttoss1/common/constant/app_colors.dart';
import 'package:flutter/material.dart';

export 'package:ttoss1/common/constant/app_colors.dart';

typedef ColorProvider = Color Function();

abstract class AbstractThemeColors {
  const AbstractThemeColors();

  Color get seedColor => Colors.black;

  Color get veryBrightGrey => AppColors.brightGrey;

  Color get drawerBg => const Color.fromARGB(255, 255, 255, 255);

  Color get scrollableItem => const Color.fromARGB(255, 57, 57, 57);

  Color get iconButton => Colors.white;

  Color get iconButtonInactivate => const Color.fromARGB(255, 130, 130, 130);

  Color get inActivate => const Color.fromARGB(255, 200, 207, 220);

  Color get activate => const Color.fromARGB(255, 63, 72, 95);

  Color get badgeBg => AppColors.blueGreen;

  Color get textBadgeText => Colors.white;

  Color get badgeBorder => Colors.transparent;

  Color get divider => const Color.fromARGB(255, 228, 228, 228);

  Color get text => const Color.fromARGB(255, 228, 228, 228);

  Color get hintText => AppColors.middleGrey;

  Color get focusedBorder => AppColors.darkGrey;

  Color get confirmText => AppColors.blue;

  Color get drawerText => text;

  Color get snackbarBgColor => AppColors.mediumBlue;

  Color get blueButtonBackground => AppColors.darkBlue;

  Color get buttonBackground => AppColors.darkGrey;

  Color get appBarBackground => AppColors.veryDarkGrey;

  Color? get lessImportantText => Colors.grey;

  Color get unreadNotification => AppColors.darkGrey;

  Color get benefitBackground => const Color.fromARGB(100, 25, 24, 29);
}
