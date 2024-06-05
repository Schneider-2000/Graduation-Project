// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:project12/Screens/intropage.dart';
// import 'package:project12/Screens/welcome_screen.dart';


class Splash_Screen extends StatelessWidget {
  const Splash_Screen({super.key, });

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/images/bg2.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          AnimatedSplashScreen(
            splash:
            ListView(
                children: [ Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Image.asset('assets/images/1.png' ,
                        height: 200,
                        width: 200,),
                      const Text(
                        'ALLS',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                      const Text(
                        'Arabic Language Learning System.',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                    ] ),
                ]),
             backgroundColor: const Color.fromARGB(0, 251, 241, 240),
            duration: 3500,
            splashTransition: SplashTransition.fadeTransition,
            splashIconSize: 500,
            nextScreen: const IntroPage()),
            Positioned(
              bottom: 30,
                left: 10,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset('assets/images/2.png',
                      height: 70,
                      width: 70,
                    color: const Color.fromARGB(150, 255, 255, 255),),
                     const Text(
                       'Future builders.',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Color.fromARGB(75, 255, 255, 255)),
                    )
                  ],
                )
            )

        ]),
      );
  }
}
