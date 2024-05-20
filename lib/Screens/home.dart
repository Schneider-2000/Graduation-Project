// import 'dart:ffi';

// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project12/Screens/categries.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 7, 124),
      appBar: AppBar(
        title: Text("Home"),
        leading: Icon(Icons.menu),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 130,
            child: Card(
              color: Color.fromARGB(255, 239, 241, 243),
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(15),
                topLeft: Radius.circular(15),
                topRight: Radius.circular(45),
              )),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/images/Logo.jpg',
                  height: 180,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Card(
                    color: Colors.deepPurple,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
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
                            Text(
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
                      return Categries();
                    }));
                  },
                  child: Container(
                    child: Card(
                      color: Colors.deepPurple,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
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
                              Text(
                                "Categries",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Card(
              color: Colors.deepPurple,
              elevation: 3,
              shape: RoundedRectangleBorder(
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
                      Text(
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
