// import 'dart:ffi';

// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ALLS/Screens/Slang_categories.dart';
import 'package:ALLS/Screens/categries.dart';
import 'package:ALLS/Screens/level.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 13, 46),
      appBar: AppBar(
        title: const Text("Home"),
        leading: const Icon(Icons.menu),
      ),
      body: Column(
        children: [
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
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/images/Logo1.png',
                  height: 180,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const SlangCategories();
                    }));
                  },
                  child: Card(
                    color: Colors.deepPurple,
                    elevation: 3,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(45),
                    )),
                    child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/yemen.png',
                              width: 130,
                            ),
                            const Text(
                              "Slang",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const Categries();
                    }));
                  },
                  child: Card(
                    color: Colors.deepPurple,
                    elevation: 3,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(45),
                    )),
                    child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/property.png',
                              width: 130,
                            ),
                            const Text(
                              "Categries",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const Level();
                    }));
                  },
            child: Card(
              color: Colors.deepPurple,
              elevation: 3,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(15),
                topLeft: Radius.circular(15),
                topRight: Radius.circular(45),
              )),
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 6),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/level-up.png',
                        width: 130,
                      ),
                      const Text(
                        "Levels",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
