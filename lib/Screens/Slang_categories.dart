import 'package:flutter/material.dart';
import 'package:project12/Screens/categries_details.dart';

class SlangCategories extends StatelessWidget {
  const SlangCategories({super.key});

  final String restorent = "مطعـم";
  final String hospital = "مستـشفـى";
  final String bank = "صرافـه";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // backgroundColor: const Color.fromARGB(255, 24, 16, 39),
      backgroundColor: const Color.fromARGB(255, 7, 13, 46),
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   //home
      //   BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
      //   //setting
      //   BottomNavigationBarItem(icon: Icon(Icons.settings), label: "setting"),
      //   //home
      //   BottomNavigationBarItem(icon: Icon(Icons.person), label: "home"),
      //   //home
      //   // BottomNavigationBarItem(icon: Icon(Icons.home), label: "home")
      // ]),
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
                child: Text("من هنا تعلم اللغه العربيه",
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
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CateoriesDetails(
                                title: restorent,
                              )));
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(500)),
                  child: Image.asset('assets/images/dinner.png'),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CateoriesDetails(
                                title: hospital,
                              )));
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(500)),
                  child: Image.asset(
                    fit: BoxFit.cover,
                    'assets/images/dinner.png',
                    height: 70,
                    width: 60,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CateoriesDetails(
                                title: bank,
                              )));
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(500)),
                  child: Image.asset('assets/images/dinner.png'),
                ),
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(500)),
                child: Image.asset('assets/images/dinner.png'
                ,height:50 ,width: 50,),
              ),
            ],
          )
        ],
      ),
    );
  }
}