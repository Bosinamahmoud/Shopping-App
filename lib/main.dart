import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'Auth/view/signIn_screen.dart';
import 'Auth/view/signUp_screen.dart';
import 'Home/view/home_screen.dart';
import 'Intro/view/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path: 'assets/lang',
      fallbackLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Suwannaphum'),
      title: 'Shopping App',
      home: WelcomeScreen(),
    );
  }
}
