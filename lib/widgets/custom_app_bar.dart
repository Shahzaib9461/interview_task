import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  String leftName;
  String rightName;
  String centerNum;
  Color textColor;
  Color lineColor;
  CustomAppBar(
      {required this.leftName,
      required this.centerNum,
      required this.rightName,
      required this.textColor,
      required this.lineColor,
      super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                rightName,
                style: TextStyle(
                    color: textColor,
                    fontSize: 26,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                centerNum,
                style: TextStyle(
                    color: textColor,
                    fontSize: 26,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                leftName,
                style: TextStyle(
                    color: textColor,
                    fontSize: 26,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(
            color: lineColor,
            height: 1,
            thickness: 1.5,
          ),
        )
      ],
    );
  }
}
