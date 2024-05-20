import 'package:flutter/material.dart';
import 'package:project12/Screens/level.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 16, 39),
      body: Column(
        children: [
          // Container(
          //   height: 100,
          //   width: double.infinity,
          //   decoration: const BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.only(
          //           bottomLeft: Radius.circular(44),
          //           bottomRight: Radius.circular(44))),
          // child: const Center(
          //   child: Text(
          //     "الأستماع - الدرس الأول",
          //     style: TextStyle(
          //         fontSize: 28,
          //         fontWeight: FontWeight.bold,
          //         color: Color.fromARGB(255, 24, 16, 39)),
          //   ),
          // ),
          // ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            height: 150,
            width: 140,
            padding: const EdgeInsets.only(top: 40),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/Logo.jpg')),
          ),
          Container(
            height: 248,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: Image.asset('assets/images/test.png'),
          ),

          Row(
            children: [
              Container(
                height: 120,
                width: 100,
                margin: const EdgeInsets.only(right: 38),
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/images/1.png',
                  height: 120,
                  width: 100,
                ),
              ),
              const Text(
                "يمكنك ان تبدء ",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 35,
          ),

          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 19, 65, 162),
                borderRadius: BorderRadius.circular(4)),
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
            child: const Text(
              "اختبار تحديد المستوى ",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Level()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 19, 65, 162),
                  borderRadius: BorderRadius.circular(4)),
              padding:
                  const EdgeInsets.symmetric(horizontal: 107, vertical: 10),
              margin: const EdgeInsets.only(top: 5),
              child: const Text(
                "البدء من الصفر ",
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
