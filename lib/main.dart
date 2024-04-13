import 'package:flutter/material.dart';
import 'package:onboadring/screen/onboadring_page.dart';
import 'package:onboadring/screen/splashscreen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: false,
          primaryColor: Colors.white,
          primaryColorLight: Colors.white),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        'onboarding': (context) => const OnBoardingPage(),
      },
    );
  }
}
