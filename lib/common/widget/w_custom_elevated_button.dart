import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String title;
  final Color textColor;
  final Color backgroundColor;
  final double borderRadius;

  const CustomElevatedButton(
    this.title, {
    this.textColor = Colors.black,
    this.backgroundColor = AppColors.darkGrey,
    this.borderRadius = 10.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        debugPrint('[onPressed ElevatedButton] $title');
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
      ),
      child: Text(title, style: const TextStyle(color: Colors.white)),
    );
  }
}
