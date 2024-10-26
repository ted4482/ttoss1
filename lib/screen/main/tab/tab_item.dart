import 'package:ttoss1/common/common.dart';
import 'package:ttoss1/screen/main/tab/favorite/f_favorite.dart';
import 'package:ttoss1/screen/main/tab/home/s_home.dart';
import 'package:flutter/material.dart';

enum TabItem {
  home(Icons.home, '홈', HomeScreen()),
  benefit(Icons.star, '혜택', FavoriteFragment(isShowBackButton: false)),
  tosspay(Icons.payment, '토스페이', HomeScreen()),
  stock(Icons.candlestick_chart, '주식', HomeScreen()),
  all(Icons.menu, '전체', HomeScreen());

  final IconData activeIcon;
  final IconData inActiveIcon;
  final String tabName;
  final Widget firstPage;

  const TabItem(this.activeIcon, this.tabName, this.firstPage, {IconData? inActiveIcon})
      : inActiveIcon = inActiveIcon ?? activeIcon;

  BottomNavigationBarItem toNavigationBarItem(BuildContext context, {required bool isActivated}) {
    return BottomNavigationBarItem(
        icon: Icon(
          key: ValueKey(tabName),
          isActivated ? activeIcon : inActiveIcon,
          color:
              isActivated ? context.appColors.iconButton : context.appColors.iconButtonInactivate,
        ),
        label: tabName);
  }
}
