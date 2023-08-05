import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:multi_language/item_list_view.dart';
import 'package:multi_language/translations/locale_keys.g.dart';
import 'package:multi_language/utils/colors.dart';
import 'package:multi_language/widgets/custom_app_bar.dart';
import 'package:multi_language/widgets/custom_button.dart';
import 'package:multi_language/widgets/custom_container.dart';
import 'package:multi_language/widgets/drop_down_field.dart';
import 'package:multi_language/widgets/text_form_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController shopCashController = TextEditingController();
  TextEditingController vTypeController = TextEditingController();

  final List<String> _dropdownItems = ['Option 1', 'Option 2', 'Option 3'];
  bool isSoundButtonOn = true;
  bool _isChecked = true;

  void soundButton() {
    setState(() {
      isSoundButtonOn = !isSoundButtonOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorScheme.backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              CustomAppBar(
                leftName: LocaleKeys.left_name.tr(),
                centerNum: LocaleKeys.center_num.tr(),
                rightName: LocaleKeys.right_name.tr(),
                textColor: AppColorScheme.darkerPrimaryColor,
                lineColor: AppColorScheme.darkerPrimaryColor,
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      LocaleKeys.name.tr(),
                      style: TextStyle(
                          color: AppColorScheme.darkerPrimaryColor,
                          fontSize: 40,
                          fontWeight: FontWeight.w600),
                    ),
                    CustomTextFormField(
                      controller: nameController,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      LocaleKeys.phone_num.tr(),
                      style: TextStyle(
                          color: AppColorScheme.darkerPrimaryColor,
                          fontSize: 34,
                          fontWeight: FontWeight.w600),
                    ),
                    CustomTextFormField(
                      controller: phoneNoController,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      LocaleKeys.destination.tr(),
                      style: TextStyle(
                          color: AppColorScheme.darkerPrimaryColor,
                          fontSize: 36,
                          fontWeight: FontWeight.w600),
                    ),
                    DropDownFormField(
                      controller: addressController,
                      dropdownItems: _dropdownItems,
                      suffixIconOnRight: true,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18, right: 18),
                    child: Text(
                      LocaleKeys.radioButtonValue.tr(),
                      style: TextStyle(
                          color: AppColorScheme.darkerPrimaryColor,
                          fontSize: 36,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  FlutterSwitch(
                    value: isSoundButtonOn,
                    toggleColor: AppColorScheme.backgroundColor,
                    toggleBorder: Border.all(),
                    padding: 1.5,
                    inactiveColor: AppColorScheme.whiteColor.withOpacity(0.85),
                    activeColor: AppColorScheme.primaryColor,
                    onToggle: (value) {
                      soundButton();
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            LocaleKeys.shopCash.tr(),
                            style: TextStyle(
                                color: AppColorScheme.darkerPrimaryColor,
                                fontSize: 28,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        CustomTextFormField(
                          controller: shopCashController,
                          singleField: true,
                          lightColor: true,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            LocaleKeys.vType.tr(),
                            style: TextStyle(
                                color: AppColorScheme.darkerPrimaryColor,
                                fontSize: 30,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        DropDownFormField(
                          controller: vTypeController,
                          dropdownItems: _dropdownItems,
                          suffixIconOnRight: false,
                          singleField: true,
                          lightColor: true,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropDownFormField(
                      controller: vTypeController,
                      dropdownItems: _dropdownItems,
                      suffixIconOnRight: false,
                      singleField: true,
                      lightColor: true,
                    ),
                    DropDownFormField(
                      controller: vTypeController,
                      dropdownItems: _dropdownItems,
                      suffixIconOnRight: false,
                      singleField: true,
                      lightColor: true,
                    )
                  ],
                ),
              ),
              Text(
                LocaleKeys.goods.tr(),
                style: TextStyle(
                    color: AppColorScheme.darkerPrimaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
              InkWell(
                child: CustomButton(
                  buttonColor: AppColorScheme.whiteColor,
                  buttonName: LocaleKeys.button1Name.tr(),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ItemListView()));
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(""),
                  Padding(
                    padding: const EdgeInsets.only(right: 45, top: 12),
                    child: CustomButton(
                        buttonColor: AppColorScheme.primaryColor,
                        buttonName: ""),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Transform.scale(
                      scale: 1.9,
                      child: Checkbox(
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                        checkColor: AppColorScheme.backgroundColor,
                        activeColor: AppColorScheme.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              //take text tiles Strings get from item list
              //For instance I added just hardcoded text here
              CustomScrollableContainer(
                texts: [
                  "${LocaleKeys.line1.tr()}\n${LocaleKeys.line2.tr()}",
                ],
              ),
              CustomButton(
                buttonColor: AppColorScheme.whiteColor,
                buttonName: LocaleKeys.button2Name.tr(),
                secondButton: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
