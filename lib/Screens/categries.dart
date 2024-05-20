import 'package:flutter/material.dart';
import 'package:project12/Screens/categries_details.dart';

class Categries extends StatelessWidget {
  const Categries({super.key});

  final String restorent = "مطعـم";
  final String hospital = "مستـشفـى";
  final String bank = "صرافـه";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color.fromARGB(255, 24, 16, 39),
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
                    'assets/images/hospital.png',
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
                  child: Image.asset('assets/images/bank.png'),
                ),
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(500)),
                child: Image.asset('assets/images/location_8517615.png'
                ,height:50 ,width: 50,),
              ),
            ],
          )
        ],
      ),
    );
  }
}




















//  Future<List> getTeams() async {
//     var response =
//         await get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
//     List jasonData = jsonDecode(response.body);
//     return jasonData;
//   }





// body: FutureBuilder<List>(
//           future: getTeams(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             } else {
//               const Center(
//                 child: Text(
//                     'The connection is Failed please Check your internet connection'),
//               );
//             }
//             return ListView.builder(
//                 itemCount: snapshot.data!.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                       title: Text(
//                         "${snapshot.data![index]['title']}",
//                       ),
//                       subtitle: Text(
//                         "${snapshot.data![index]['body']}",
//                       ));
//                 });
//           }),