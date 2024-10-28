import 'package:flutter/material.dart';
import 'package:ttoss1/common/common.dart';
import 'package:ttoss1/common/util/app_keyboard_util.dart';
import 'package:ttoss1/common/widget/w_arrow.dart';
import 'package:ttoss1/common/widget/w_text_field_with_delete.dart';

class SearchStockAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController textEditingController;

  const SearchStockAppBar({super.key, required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.veryDarkGrey, height: kToolbarHeight,
      child: Row(
        children: [
          Tap(
            onTap: () => Nav.pop(context),
            child: const Arrow(direction: AxisDirection.left,)
          ).pOnly(left: 12),
          Expanded(
            child: TextFieldWithDelete(
              controller: textEditingController,
              textInputAction: TextInputAction.search,
              texthint: "'삼성'을 검색해보세요.",
              onEditingComplete: () => AppKeyboardUtil.hide(context),
            ).pOnly(top: 6, left: 6),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
