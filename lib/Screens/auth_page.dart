import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project12/Screens/Login.dart';
import 'package:project12/Screens/Login_Splash_Screen.dart';
import 'package:project12/Screens/home.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user is logged in
          if (snapshot.hasData) {
            return  LoginSplash();
          }
          //user is not logged in
          else{
            return  SignInScreen();
          }
        }
      ),
    );
        
        
      
    
  }
}