import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project12/Screens/Home_Screen.dart';


class LoginSplash extends StatelessWidget {
  const LoginSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Lottie.asset(
        'assets/images/successfully-done.json'
      ),
              ),
      duration: 3500,

      backgroundColor: const Color.fromARGB(255, 7, 13, 46),
      // backgroundColor: Colors.black,
      splashIconSize: 400,
     nextScreen: const HomeScreen(),
     );
  }
}