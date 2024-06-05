import 'package:flutter/material.dart';

class CateoriesDetails extends StatelessWidget {
  final String title ;

  const CateoriesDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 24, 16, 39),
      backgroundColor: const Color.fromARGB(255, 7, 13, 46),
      appBar: AppBar(
        title:Center(child: Text(title)) ,
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(44),
                    bottomRight: Radius.circular(44))),
            child:   Center(
              child: Text(
                "التحـدث - $title",
                style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 24, 16, 39)),
              ),
            ),
          ),
          Container(
            child:   Padding(
              padding: const EdgeInsets.only(top: 50),
              child:  Image.asset('assets/images/dinner.png' ,width: 180,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20.0),
            child: Container(
                child: const Text(
              " ما الذي تـسمعه ؟",
              style: TextStyle(fontSize: 24, color: Colors.white),
            )),
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color:  Colors.white  ,
                    borderRadius: BorderRadius.circular(4)),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                child:  const Text(
                  "سيارة",
                  style: TextStyle(
                      fontSize: 18,
                      color:   Colors.black  ,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                child: const Text(
                  "قطار",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                child: const Text(
                  "باص",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Center(child: Text('أحسنت الاجابه صحيحه')),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Center(child: Text("الدرس الأخـر"))),
                    ],
                  );
                },
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 255, 115),
                  borderRadius: BorderRadius.circular(4)),
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
              child: const Text(
                "تـــأكيد",
                style: TextStyle(
                    fontSize: 18,
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