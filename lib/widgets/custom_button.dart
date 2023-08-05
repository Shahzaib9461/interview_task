import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Color buttonColor;
  String? buttonName;
  bool? secondButton;
  CustomButton(
      {required this.buttonColor,
      this.buttonName,
      this.secondButton,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: secondButton == true ? 45 : 40,
      width: secondButton == true ? 160 : 200,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(buttonName!,
          style: const TextStyle(
              color: Colors.black, fontSize: 26, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center),
    );
  }
}
