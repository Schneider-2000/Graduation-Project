import 'package:flutter/material.dart';
import 'package:project12/Screens/categries.dart';
import 'package:project12/Screens/sections.dart';


class Level extends StatelessWidget {
  const Level({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 16, 39),
      appBar: AppBar(
        title: const Text(
          "Levels",
          style: TextStyle(fontSize: 30),
        ),
        // titleTextStyle: TextStyle(),
        elevation: 10,

        shadowColor: const Color.fromARGB(255, 84, 81, 236),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 21, 7, 46),
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.percent)),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80.0, top: 16),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Categries()));
                  },
                  child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 61, 212, 126),
                          borderRadius: BorderRadius.circular(500)),
                      child: const Center(
                          child: Text("4",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 74)))),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Image.asset(
                  "assets/images/1.png",
                  width: 60,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 126, 48, 179),
                        borderRadius: BorderRadius.circular(500)),
                    child: const Center(
                        child: Text("3",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 74)))),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50.0, top: 16),
                child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 34, 218),
                        borderRadius: BorderRadius.circular(500)),
                    child: const Center(
                        child: Text("2",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 74)))),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 80.0, top: 16),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Sections()));
                  },
                  child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 136, 138, 233),
                          borderRadius: BorderRadius.circular(500)),
                      child: const Center(
                          child: Text("1",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 74)))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
