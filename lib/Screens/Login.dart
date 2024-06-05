// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:project12/Screens/Login_Splash_Screen.dart';
import 'package:project12/Screens/forget_passsword_screen.dart';
import 'package:project12/Screens/signup_screen.dart';
import 'package:project12/Widgets/custom_scaffold.dart';
// import 'package:login_signup/screens/signup_screen.dart';
// import 'package:login_signup/widgets/custom_scaffold.dart';

import '../theme/theme.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formSignInKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool rememberPassword = true;
  bool passToggle = true;
  
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      children: const [],
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(
              height: 10,
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: _formSignInKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                  'assets/images/Logo.jpg',
                  height: 100,
                  ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Welcome',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                              color: lightColorScheme.primary,
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
                        height: 20.0,
                      ),
                      TextFormField(
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return 'Please enter Email';
                        //   }
                        //   return null;
                        // },
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: InputDecoration(
                          label: const Text('Email'),
                          hintText: ' Email',
                          hintStyle: const TextStyle(
                            color: Colors.black26,
                          ),
                          prefixIcon: const Icon(Icons.email_outlined),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12, // Default border color
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12, // Default border color
                            ),
                            borderRadius: BorderRadius.circular(10), 
                          ),
                        ),
                        validator: (value) {
                          bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"
                          ).hasMatch(value!);
                          if (value.isEmpty) {
                            return " Enter Email";
                          }
                          
                          else if (!emailValid) {
                            return "Enter Valid Email";
                          
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      TextFormField(
                        // obscureText: true,
                        obscuringCharacter: '*',
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return 'Please enter Password';
                        //   }
                        //   return null;
                        // },
                        keyboardType: TextInputType.emailAddress,
                        controller: passController,
                        obscureText: passToggle,
                        decoration: InputDecoration(
                          label: const Text('Password'),
                          hintText: 'Enter Password',
                          hintStyle: const TextStyle(
                            color: Colors.black26,
                          ),
                          prefixIcon: const Icon(Icons.lock_outline),
                          suffix: InkWell(
                            onTap: (){
                                  setState(() {
                                      passToggle = !passToggle;
                                    });
                                },
                           child: Icon(passToggle ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12, // Default border color
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12, // Default border color
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return " Enter password";
                          }
                          else if(passController.text.length < 6){
                            return "Password Length Should  be more than 6 characters ";

                          }
                          return null;
                        }
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                       Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const ForgetPasswordScreen()));
                                  } ,
                                  child: Text(
                                    'Forget password?',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: lightColorScheme.primary,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: InkWell(
                          onTap: () {
                           if (_formSignInKey.currentState!.validate()) {
                           print('object');
                           emailController.clear();
                           passController.clear();
                           }
                          },
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formSignInKey.currentState!.validate() &&
                                passToggle) {
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginSplash()));
                            } else if (!passToggle) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text(
                                        'Please agree to the processing of personal data')),
                              );
                            }
                              
                            },
                            child: const Text('Sign in'),
                          )
                          // onPressed: () {
                          //   
                          // },
                          
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
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
                        height: 25.0,
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Logo(Logos.facebook_f),
                          // Logo(Logos.twitter),
                           Logo(Logos.google),
                          Logo(Logos.apple),
                        ],
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      // don't have an account
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don\'t have an account? ',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (e) => const SignUpScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: lightColorScheme.primary,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
