import 'package:flutter/material.dart';
import 'package:multi_language/utils/colors.dart';

class DropDownFormField extends StatefulWidget {
  final TextEditingController controller;
  final List<String> dropdownItems;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final Function(String)? onChanged;
  final bool suffixIconOnRight;
  bool? singleField;
  final bool? lightColor;

  DropDownFormField(
      {super.key,
      required this.controller,
      required this.dropdownItems,
      this.keyboardType = TextInputType.text,
      this.textInputAction = TextInputAction.next,
      this.onChanged,
      required this.suffixIconOnRight,
      this.singleField,
      this.lightColor});

  @override
  _DropDownFormFieldState createState() => _DropDownFormFieldState();
}

class _DropDownFormFieldState extends State<DropDownFormField> {
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        width: widget.singleField == true ? 180 : 240,
        child: widget.suffixIconOnRight == true
            ? TextFormField(
                controller: widget.controller,
                keyboardType: widget.keyboardType,
                textInputAction: widget.textInputAction,
                onChanged: widget.onChanged,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColorScheme.darkerPrimaryColor,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6)),
                  suffixIcon: InkWell(
                    child: const Icon(
                      Icons.arrow_drop_down,
                      size: 50,
                    ),
                    onTap: () {
                      _showDropdownMenu();
                    },
                  ),
                ),
              )
            : TextFormField(
                controller: widget.controller,
                keyboardType: widget.keyboardType,
                textInputAction: widget.textInputAction,
                onChanged: widget.onChanged,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: widget.lightColor == true
                      ? AppColorScheme.primaryColor
                      : AppColorScheme.darkerPrimaryColor,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6)),
                  prefixIcon: InkWell(
                    child: const Icon(
                      Icons.arrow_drop_down,
                      size: 50,
                    ),
                    onTap: () {
                      _showDropdownMenu();
                    },
                  ),
                ),
              ));
  }

  void _showDropdownMenu() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: widget.dropdownItems.map((item) {
              return ListTile(
                title: Text(item),
                onTap: () {
                  setState(() {
                    _selectedItem = item;
                    widget.controller.text = item;
                  });
                  Navigator.pop(context);
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
