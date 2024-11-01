import 'package:flutter/material.dart';

const width10 = Width(10);
const width20 = Width(20);
const width30 = Width(30);

const height10 = Height(10);
const height20 = Height(20);
const height30 = Height(30);
const height40 = Height(40);
const height50 = Height(50);

class Height extends StatelessWidget {
  final double height;

  const Height(
    this.height, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

class Width extends StatelessWidget {
  final double width;

  const Width(
    this.width, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
