import 'package:flutter/material.dart';
import 'package:ALLS/Screens/lession_listen.dart';
import 'package:ALLS/Screens/lession_speaking.dart';

class Sections extends StatelessWidget {
  const Sections({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home",
        // style: TextStyle( color: Colors.white),
        ),
        leading: const Icon(Icons.menu,
          // color: Colors.white,
        ),
          // backgroundColor: const Color.fromARGB(255, 24, 16, 39),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
                  color: const Color.fromARGB(255, 7, 13, 46),
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
                    const Divider(
                      height: 2,
                    ),
          Expanded(
              child: Container(
            color: const Color.fromARGB(255, 7, 13, 46),
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
