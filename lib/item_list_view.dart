import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:multi_language/translations/locale_keys.g.dart';
import 'package:multi_language/utils/colors.dart';
import 'package:multi_language/widgets/custom_app_bar.dart';
import 'package:multi_language/widgets/custom_container.dart';
import 'package:multi_language/widgets/icon_row.dart';

import 'widgets/custom_card.dart';

class ItemListView extends StatelessWidget {
  ItemListView({super.key});
  final List<String> items = [
    '	منی ریفریجریٹر',
    '	ریفریجریٹر',
    '	فریزر',
    '	واشنگ مشین',
    '	واشنگ مشین ڈرائر کے ساتھ',
    '	واٹر ڈسپنسر',
    '	ایل سی  ڈی ٹی وی',
    '	پنکھا',
    'مائیکرو ویو',
    'چولہا'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              CustomAppBar(
                leftName: LocaleKeys.left_name.tr(),
                centerNum: LocaleKeys.center_num.tr(),
                rightName: LocaleKeys.right_name.tr(),
                textColor: AppColorScheme.secondaryColor,
                lineColor: AppColorScheme.secondaryColor,
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: 12, right: 12, top: 5, bottom: 10),
                child: IconList(),
              ),
              SizedBox(
                height: 450,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return CustomCard(text: items[index]);
                  },
                ),
              ),
              const CustomScrollableContainer(
                texts: [
                  "",
                ],
              ),
              InkWell(
                child: Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      color: AppColorScheme.backgroundColor,
                      borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    "واپس",
                    style: TextStyle(
                        color: AppColorScheme.whiteColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
