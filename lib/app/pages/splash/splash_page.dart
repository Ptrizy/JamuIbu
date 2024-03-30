import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jamu_ibu/app/routes/assets_path.dart';

import '../onboarding/onboarding_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnboardingPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF375529),
        child: const Center(
          child: Image(
            image: AssetImage(Assets.splashImage),
            width: 400,
            height: 300,
          ),
        ),
      ),
    );
  }
}
