import 'package:flutter/material.dart';

class Categries extends StatefulWidget {
  const Categries({super.key});

  @override
  State<Categries> createState() => _CategriesState();
}

class _CategriesState extends State<Categries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 16, 39),
      bottomNavigationBar: BottomNavigationBar(items: const [
        //home
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        //setting
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "setting"),
        //home
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "home"),
        //home
        // BottomNavigationBarItem(icon: Icon(Icons.home), label: "home")
      ]),
      body: ListView(
        children: [
          Container(
            height: 120,
            decoration: const BoxDecoration(
                color: Color.fromARGB(73, 155, 104, 243),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 10, 38, 61),
                      offset: Offset(0, 0),
                      spreadRadius: 10,
                      blurRadius: 10),
                ]),
            child: const Center(
                child: Text("من هنا لهجه المكلا",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      // backgroundColor: Colors.red
                    ))),
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(500)),
                child: Image.asset('assets/images/dinner.png'),
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(500)),
                child: Image.asset(
                  fit: BoxFit.cover,
                  'assets/images/dinner.png',
                  height: 100,
                  width: 300,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(500)),
                child: Image.asset('assets/images/dinner.png'),
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(500)),
                child: Image.asset('assets/images/dinner.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(500)),
                child: Image.asset('assets/images/dinner.png'),
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(500)),
                child: Image.asset('assets/images/dinner.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
