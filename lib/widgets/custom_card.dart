import 'package:flutter/material.dart';
import 'package:multi_language/utils/colors.dart';

class CustomCard extends StatelessWidget {
  final String text;

  const CustomCard({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/subway_subtraction.png"),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 5, top: 5),
          child: Container(
              height: 35,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColorScheme.boardingTileColor,
              ),
              child: Text(
                text,
                style: TextStyle(
                    color: AppColorScheme.whiteColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              )),
        ),
        Image.asset("assets/images/subway_add.png"),
      ],
    );
  }
}
