import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonText;
  const ButtonWidget({Key? key, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite, height: 48,
      decoration: BoxDecoration(border: Border.all(color: const Color(0xff63625E)), borderRadius: BorderRadius.circular(25)),
      child: Center(child: Text(buttonText, style: const TextStyle(color: Color(0xff63625E), fontSize: 16, fontWeight: FontWeight.w500),)),
    );
  }
}
