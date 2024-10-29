import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttoss1/common/common.dart';
import 'package:ttoss1/common/dart/extension/datetime_extension.dart';
import 'package:ttoss1/common/data/preference/prefs.dart';
import 'package:ttoss1/common/widget/w_big_button.dart';
import 'package:ttoss1/common/widget/w_custom_switch.dart';
import 'package:ttoss1/screen/main/tab/stock/setting/d_number.dart';
import 'package:ttoss1/screen/opensource/s_opensource.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: '설정'.text.make()),
      body: ListView(
        children: [
          // Switch
          Obx(
            () => CustomSwitch(
              title: '푸시 설정',
              isOn: Prefs.isPushOnRx.get(),
              onChanged: (isOn) => Prefs.isPushOnRx.set(isOn),
            ),
          ).p12(),
          // Slider
          Obx(
            () => Slider(
                value: Prefs.sliderPositionRx.get(),
                min: 0,
                max: 100,
                divisions: 100,
                label: Prefs.sliderPositionRx.get().round().toString(),
                onChanged: (value) {
                  Prefs.sliderPositionRx.set(value);
                }).p12(),
          ),
          Obx(
            () => BigButton('날짜 ${Prefs.birthdayRxn.get() == null ? '' : Prefs.birthdayRxn.get()?.formattedDate}', onTap: () async {
              final date = await showDatePicker(
                  context: context,
                  initialDate: Prefs.birthdayRxn.get() ?? DateTime.now(),
                  firstDate: DateTime.now().subtract(90.days),
                  lastDate: DateTime.now().add(90.days));
              Prefs.birthdayRxn.set(date);
            }),
          ),
          Obx(
            () => BigButton("숫자 ${Prefs.number.get()}", onTap: () async {
              final number = await NumberDialog().show();
              if (number != null) {
                Prefs.number.set(number);
              }
            }),
          ),
          BigButton('오픈소스 화면', onTap: () => Nav.push(const OpensourceScreen()) )
        ],
      ),
    );
  }
}
