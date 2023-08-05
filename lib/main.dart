import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:multi_language/home_screen.dart';
import 'package:multi_language/translations/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    path: "assets/translations",
    supportedLocales: const [
      Locale('en'),
      Locale('ur'),
    ],
    fallbackLocale: const Locale('ur'),
    assetLoader: const CodegenLoader(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily:
            'Jameel Noori Nastaleeq', // Set the "Jameel Noori Nastaleeq" font family
        // Define other theme properties
      ),
      home: const HomeScreen(),
    );
  }
}
