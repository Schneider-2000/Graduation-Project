
import 'package:flutter/material.dart';
import 'package:ALLS/Screens/auth_page.dart';
import 'package:ALLS/Widgets/custom_scaffold.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 8,

              child: Column(
                children: [
                  Image.asset(
                      'assets/images/Logo.jpg',
                      height: 180,
                    ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 40.0,
                    ),
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          children: [
                            TextSpan(
                                text: 'Welcome\n',
                                style: TextStyle(
                                  fontSize: 45.0,
                                  fontWeight: FontWeight.w600,
                                )),
                            TextSpan(
                                text:
                                    'You will learn a lot about the Arabic language and you will enjoy learning the Slang dialect',
                                style: TextStyle(
                                  fontSize: 20,
                                  // height: 0,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
              ),
          SizedBox(
                        width: double.infinity,
            height: 130,
            child: Card(
              color: const Color.fromARGB(255, 239, 241, 243),
              elevation: 10,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(15),
                topLeft: Radius.circular(15),
                topRight: Radius.circular(45),
              )),
                        child: ElevatedButton(
                          onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const AuthPage()));
                          },
                          child: const Text('Get Started',
                          style: TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.bold,color: Colors.white
                                )
                          ),
                        ),
                      ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   Card(
                    color: Colors.deepPurple,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(45),
                    )),
                  )
         
        ]
      ),
                  
                
          
          )  
        ]
        ),           
          
      children: const [
          Stack(
          children: <Widget>[

          ],
          ),
        ]
    );
  }
}
