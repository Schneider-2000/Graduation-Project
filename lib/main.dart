
import 'package:flutter/material.dart';
import 'package:project12/Screens/welcome_screen.dart';
import 'package:project12/Theme/theme.dart';
// import 'package:project12/Screens/Home_Screen.dart';
// ignore: depend_on_referenced_packages
// import 'package:login_signup/screens/welcome_screen.dart';
// ignore: depend_on_referenced_packages
// import 'package:login_sighup/theme/theme.dart';

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
      title: 'Flutter Demo',
      theme: lightMode,
      home: const WelcomeScreen(),
      // home: const HomeScreen(),

    );
  }
}
