import 'package:flutter/material.dart';
import 'package:multi_language/utils/colors.dart';

class CustomScrollableContainer extends StatelessWidget {
  final List<String> texts;

  const CustomScrollableContainer({super.key, required this.texts});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: texts.map((text) {
          return Container(
            margin: const EdgeInsets.only(left: 50, right: 50, bottom: 10),
            padding: const EdgeInsets.only(right: 12, top: 8),
            constraints: const BoxConstraints(
              minHeight: 100,
              minWidth: double.infinity,
            ),
            decoration: BoxDecoration(
              color: AppColorScheme.boxColor,
              border: Border.all(color: AppColorScheme.primaryColor),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              text,
              style: TextStyle(
                  color: AppColorScheme.whiteColor,
                  fontSize: 26,
                  fontWeight: FontWeight.w600),
            ),
          );
        }).toList(),
      ),
    );
  }
}
