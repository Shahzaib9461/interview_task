// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> ur = {
    "left_name": "حسن گلاس",
    "right_name": "عمیر اقبال",
    "center_num": "00000",
    "name": "نام",
    "phone_num": "فون نمبر",
    "destination": "تک",
    "radioButtonValue": "مقررہ قیمت",
    "shopCash": "دکان کے پیسے",
    "vType": "گاڑی کی قسم",
    "fnDestination": "کہاں تک",
    "time": "کب تک",
    "goods": "سامان",
    "button1Name":"سامان داخل کریں",
    "button2Name":"آرڈر درج کریں",
    "line1":"فریج ۔ اےسی ۔ ٹیبل",
    "line2":"کرسی4"
  };
  static const Map<String, dynamic> en = {
    "name": "Shahzaib",
    "last_name": "M.Sarwar",
    "Des": "I am flutter Developer",
    "LongDes":
        "I have more than 1 years of experience in UI/UX, API integrations and much more",
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "ur": ur,
    "en": en
  };
}
