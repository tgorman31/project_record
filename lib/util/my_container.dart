import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
    required this.boxColor,
    required this.boxText,
  }) : super(key: key);
  final Color boxColor;
  final String boxText;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: boxColor,
      alignment: Alignment.center,
      width: 400,
      height: 100,
      child: Text(
        boxText,
        style: const TextStyle(fontSize: 40),
      ),
    );
  }
}
