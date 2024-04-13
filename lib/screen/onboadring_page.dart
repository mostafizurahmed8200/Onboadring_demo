import 'package:flutter/material.dart';
import 'package:introduction_slider/source/presentation/pages/introduction_slider.dart';
import 'package:introduction_slider/source/presentation/widgets/buttons.dart';
import 'package:introduction_slider/source/presentation/widgets/dot_indicator.dart';
import 'package:introduction_slider/source/presentation/widgets/introduction_slider_item.dart';

import 'home_page.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: IntroductionSlider(
          items: [
            IntroductionSliderItem(
              logo: Image.asset('image/fresh_meal.png'),
              title: Padding(
                padding: const EdgeInsets.all(20.0),
                child: const Text(
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                    "Discover fresh, healthy meals delivered straight to your door."),
              ),
              backgroundColor: Colors.white,
            ),
            IntroductionSliderItem(
              logo: Image.asset('image/quick_delivery.png'),
              title: Padding(
                padding: const EdgeInsets.all(20.0),
                child: const Text(
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                    "Discover fresh, healthy meals delivered straight to your door."),
              ),
              backgroundColor: Colors.white,
            ),
            IntroductionSliderItem(
              logo: Image.asset('image/start_today.png'),
              title: Padding(
                padding: const EdgeInsets.all(20.0),
                child: const Text(
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                    "Discover fresh, healthy meals delivered straight to your door."),
              ),
              backgroundColor: Colors.white,
            ),
          ],
          done: const Done(
            child: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.done),
            ),
            home: HomePage(),
          ),
          next: const Next(
            child: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.arrow_forward),
            ),
          ),
          back: const Back(
            child: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.arrow_back),
            ),
          ),
          dotIndicator: const DotIndicator(selectedColor: Colors.red),
        ));
  }
}
