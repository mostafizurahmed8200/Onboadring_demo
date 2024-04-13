import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navToOnboar();
  }

  _navToOnboar() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    Navigator.pushNamed(context, "onboarding");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image.asset('image/sp_img.png'),
        ),
      ),
    );
  }
}
