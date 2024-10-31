import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class HomeAppBarFragment extends StatefulWidget {
  const HomeAppBarFragment({super.key});

  @override
  State<HomeAppBarFragment> createState() => _HomeAppBarFragmentState();
}

class _HomeAppBarFragmentState extends State<HomeAppBarFragment> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight,
      child: Row(
        children: [
          Image.asset('$basePath/icon/toss.png', height: kToolbarHeight - 10),
          emptyExpanded,
          Image.asset('$basePath/icon/map_point.png', height: kToolbarHeight - 20),
          width10,
          Badge(child: Image.asset('$basePath/icon/notification.png', height: kToolbarHeight - 20)).pOnly(right: 30),
        ],
      ),
    );
  }
}
