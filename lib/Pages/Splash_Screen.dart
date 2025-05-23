import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'Login_Page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash: Center(
      child: Lottie.asset("Assets/Animation - 176.json"),
    )
      ,nextScreen: const LoginPage(),
      backgroundColor: Colors.white,
      duration: 1500,
      splashIconSize: 200,
    );
  }
}
