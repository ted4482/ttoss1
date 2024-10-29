import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nav/dialog/dialog.dart';
import 'package:ttoss1/common/common.dart';
import 'package:ttoss1/common/widget/w_rounded_container.dart';

class NumberDialog extends DialogWidget {
  NumberDialog({super.key, super.animation = NavAni.Fade, super.barrierDismissible = false});

  @override
  State<NumberDialog> createState() => _NumberDialogState();
}

class _NumberDialogState extends DialogState<NumberDialog> {
  final textEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            keyboardType: TextInputType.number,
            controller: textEditController,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
            ],
            onEditingComplete: () => completeEditing(),
          ),
          Tap(
            onTap: () => completeEditing(),
            child: RoundedContainer(child: '확인'.text.make()),
          )
        ],
      ),
    );
  }

  void completeEditing() {
    final text = textEditController.text;
    if (text.isNotEmpty) {
      int number = int.parse(text);
      widget.hide(number);
    } else {
      widget.hide();
    }
  }
}
