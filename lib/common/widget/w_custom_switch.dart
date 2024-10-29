import 'package:flutter/material.dart';
import 'package:ttoss1/common/common.dart';
import 'package:ttoss1/common/widget/w_os_switch.dart';

class CustomSwitch extends StatelessWidget {
  final String title;
  final bool isOn;
  final ValueChanged<bool> onChanged;

  const CustomSwitch({
    super.key,
    required this.title,
    required this.isOn,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title.text.make(),
        emptyExpanded,
        OsSwitch(value: isOn, onChanged: onChanged),
      ],
    );
  }
}
