import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:project12/Screens/home.dart';
import 'package:project12/Screens/welcome_screen.dart';
import 'package:project12/Theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ALLS',
      theme: lightMode,
      home: Home()
      // AnimatedSplashScreen(
          
      //     splash: 
      //     Column(
      //        mainAxisAlignment: MainAxisAlignment.start,
      //       children: [
      //       Image.asset("assets/images/1.png", 
      //     height: 100,
      //      width: 100,),
      //      const Text(
      //           'ALLS',
      //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255)),
      //         ),
      //         const Text(
      //           'Arabic Language Learning System.',
      //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255) ),
      //         ), 
      //      ],),
          
      //      duration: 3000,
      //       splashTransition: SplashTransition.fadeTransition,
           
      //       backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            
      //       nextScreen: const WelcomeScreen()),
 
         
          
      // home: const HomeScreen(),
    );
  }
}
