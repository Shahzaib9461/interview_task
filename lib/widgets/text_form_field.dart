import 'package:flutter/material.dart';
import 'package:multi_language/utils/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final Function(String)? onChanged;
  final bool? lightColor;
  bool? singleField;
  CustomTextFormField(
      {super.key,
      required this.controller,
      this.keyboardType = TextInputType.text,
      this.textInputAction = TextInputAction.next,
      this.onChanged,
      this.singleField,
      this.lightColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: singleField == true ? 180 : 240,
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        onChanged: onChanged,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
            filled: true,
            fillColor: lightColor == true
                ? AppColorScheme.primaryColor
                : AppColorScheme.darkerPrimaryColor),
      ),
    );
  }
}
