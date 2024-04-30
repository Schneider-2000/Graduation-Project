import 'package:flutter/material.dart';
import 'package:project12/Screens/lession_listen.dart';
import 'package:project12/Screens/lession_speaking.dart';

class Sections extends StatelessWidget {
  const Sections({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
                  color: Colors.deepPurple[100],
                  width: double.infinity,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const LessonListen()));
                      },
                      icon: const Icon(
                        Icons.speaker,
                        color: Colors.white,
                        size: 200,
                      )))),
          Expanded(
              child: Container(
            color: Colors.deepPurple,
            width: double.infinity,
            child:IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const LessonSpeaking()));

            }, icon: const Icon(Icons.mic_none_sharp , size: 200, color: Colors.white,))
          )),
        ],
      ),
    );
  }
}
