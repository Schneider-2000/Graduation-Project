import 'package:flutter/material.dart';
import 'package:project12/Screens/Login.dart';
import 'package:project12/Theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
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
      home: const SignInScreen()
      // Splash_Screen(),
      //  Splash_Screen(),
      // Home(),



      // home: const HomeScreen(),
    );
  }
}
