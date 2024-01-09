import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_widget/m_widget.dart';
import 'package:sirama/utils/config.dart';
import 'package:sirama/views/pages/pages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        scaffoldMessengerKey: scaffoldMessengerKey,
        title: Config.appName,
        theme: ThemeData.light().copyWith(
          materialTapTargetSize: MaterialTapTargetSize.padded,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Config.primaryColor,
            primary: Config.primaryColor,
          ),
          filledButtonTheme: const FilledButtonThemeData(
            style: ButtonStyle(
              fixedSize: MaterialStatePropertyAll(Size.fromHeight(60.0)),
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            border: Config.outlinedBorder,
            focusedBorder: Config.focusBorder,
            errorBorder: Config.errorBorder,
          ),
        ),
        home: HomePage(),
        // profile: const ProfilePage(),
        // route for home page
      );
}
