import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ALLS/Screens/Login.dart';
import 'package:ALLS/components/my_button.dart';
import 'package:ALLS/components/my_textfield.dart';
import 'package:ALLS/components/square_tile.dart';
import 'package:ALLS/services/auth_service.dart';

class SignUpScreen extends StatefulWidget {
   const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final ConfirmpassController = TextEditingController();

  void SignUserUp() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    //try sign up..................................
    try {
      if (passController.text == ConfirmpassController.text) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passController.text,
      );
      }
      else{
        //show error message..................
         
        ShowErrorMessage('password is not same');
    
      }
      // pop the loading circle..............
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle...............
      Navigator.pop(context);
      //show error message.......................

      ShowErrorMessage(e.code);
      //wrong email.........................
      // if (e.code == 'user-not-found') {
       
      // }
      // //wrong password.........................
      // else if (e.code == 'user-not-found') {
        
      // }
    }
  }

  //error massage method.........................
  void ShowErrorMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return  AlertDialog(
            backgroundColor: const Color(0xFF416FDF),
            title: Center(
              child: Text(
                message,
                style: const TextStyle(color: Colors.white),
                ),
                ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          //background......
          child: Stack(children: [
        Image.asset(
          'assets/images/bg1.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                flex: 1,
                child: SizedBox(
                  height: 5,
                ),
              ),
              Expanded(
                  flex: 5,
                  child: Container(
                    padding:
                        const EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 20.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
          
                    //logo...................................................
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Logo1.png',
                            height: 100,
                          ),
          
                          // Get Started..................................................
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Get Started',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xFF416FDF),
                                ),
                              ),
                              Image.asset(
                                'assets/images/par.png',
                                height: 80,
                                width: 80,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          // Email Button.................................
                          MyTextField(
                            controller: emailController,
                            obscureText: false,
                            hintText: 'Email',
                            label: 'Email',
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          // password Button.................................
                          MyTextField(
                              controller: passController,
                              obscureText: true,
                              hintText: 'password',
                              label: 'password'),
                          const SizedBox(
                            height: 3.0,
                          ),
          
                            // Confirm password Button.................................
                            MyTextField(
                              controller: ConfirmpassController,
                              obscureText: true,
                              hintText: 'Confirm password',
                              label: 'Confirm password'
                              ),
                           
                          const SizedBox(
                            height: 15.0,
                          ),
                          // sign in button
                          MyButton(
                             text: 'Sign up',
                            onTap: SignUserUp,
                          ),
          
                          const SizedBox(
                            height: 30.0,
                          ),
          
                          // continue with...................................
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 0.7,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 0,
                                  horizontal: 10,
                                ),
                                child: Text(
                                  'Sign up with',
                                  style: TextStyle(
                                    color: Colors.black45,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 0.7,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
          
                          // google + apple sign in buttons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                             // Square Google Logo Button....................................
                          SquareTile(
                            onTap:() => AuthService().signInWithGoogle(),
                             imagePath: 'assets/images/google.png',
                          ),

                          // Square apple Logo Button....................................
                          SquareTile(
                            onTap: () {}, 
                            imagePath: 'assets/images/apple.png',
                            ),
                            ],
                          ),
          
                          // not member? sing up now.............................
                          const SizedBox(
                            height: 25.0,
                          ),
                          // don't have an account
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Already have an account? ',
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (e) =>  const SignInScreen(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Sign In now',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF416FDF),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ])),
    );
  }
}
