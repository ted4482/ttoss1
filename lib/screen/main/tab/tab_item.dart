import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/benefit/s_benefit.dart';
import 'package:fast_app_base/screen/main/tab/favorite/f_favorite.dart';
import 'package:fast_app_base/screen/main/tab/home/f_home_sample.dart';
import 'package:fast_app_base/screen/main/tab/home/s_home.dart';
import 'package:flutter/material.dart';

enum TabItem {
  home(Icons.home, '홈', HomeScreen(), false, null),
  benefit(Icons.star, '혜택', BenefitScreen(), true, 'new'),
  tosspay(Icons.payment, '토스페이', FavoriteFragment(), true, '2'),
  stock(Icons.candlestick_chart, '주식', HomeScreen(), false, null),
  menu(Icons.menu, '메뉴', HomeFragment(), true, null),
  ;

  final IconData activeIcon;
  final IconData inActiveIcon;
  final String tabName;
  final Widget firstPage;
  final bool isBadge;
  final String? badgeLabel;

  const TabItem(this.activeIcon, this.tabName, this.firstPage, this.isBadge, this.badgeLabel, {IconData? inActiveIcon})
      : inActiveIcon = inActiveIcon ?? activeIcon;

  BottomNavigationBarItem toNavigationBarItem(BuildContext context, {required bool isActivated}) {
    return BottomNavigationBarItem(
        icon: isBadge ? Badge(
            label: Text('${(badgeLabel ?? '').isEmpty ? '' : badgeLabel}'),
            child: _getIcon(isActivated, context))
          : _getIcon(isActivated, context), label: tabName);
  }

  Icon _getIcon(bool isActivated, BuildContext context) {
    return Icon(
      isActivated ? activeIcon : inActiveIcon,
      key: ValueKey(tabName),
      color: isActivated ? context.appColors.iconButton : context.appColors.iconButtonInactivate,
    );
  }
}
