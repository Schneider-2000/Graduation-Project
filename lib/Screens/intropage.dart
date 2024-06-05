import 'package:flutter/material.dart';
import 'package:project12/Screens/intoimg.dart';
import 'package:project12/Screens/welcome_screen.dart';
// import 'package:projectalls/test/getapi2.dart';
// import 'package:projectalls/test/intoimg.dart';
 import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final contaroller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    contaroller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Image.asset('assets/images/Logo1.png'))),
              ),
              const SizedBox(
                height: 40,
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: const Text(
                  "home",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                title: const Text(
                  "Setting",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: const Text(
                  "Profile",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Image.asset(
                  "assets/images/1.png",
                  height: 240,
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: contaroller,
          onPageChanged: (index) {
            setState(() => isLastPage = index == 2);
          },
          children: const [
            buildPage(
                color: Color.fromARGB(255, 6, 35, 88),
                urlImage: "assets/images/Logo1.png",
                title: "ALLS",
                subTitle: "Arabic Language Learing System"),
            buildPage(
                color: Color.fromARGB(255, 6, 35, 88),
                urlImage: "assets/images/par.png",
                title: "شخصية التطبيق",
                subTitle:
                    " هنا ننطلق بكم مع الشخصيه المريحه للطبيق حيث سيتم متابعتكم "),
            buildPage(
                color: Color.fromARGB(255, 6, 35, 88),
                urlImage: "assets/images/International1.png",
                title: "ALLS",
                subTitle: "هنا يمكنك تعلم الاستماع والنطق بالغة العربيه"),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white, shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  backgroundColor: const Color.fromARGB(255, 6, 35, 88),
                  minimumSize: const Size.fromHeight(80)),
              onPressed: () async {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const WelcomeScreen()));
              },
              child: const Text(
                "Get Start",
                style: TextStyle(fontSize: 24),
              ))
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: Theme.of(context).primaryColorLight,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        contaroller.jumpToPage(2);
                      },
                      child: Text("SKIP",
                          style: TextStyle(
                              fontSize: 24,
                              color: Theme.of(context).primaryColor))),
                  Center(
                    child: SmoothPageIndicator(
                      controller: contaroller,
                      count: 3,
                      effect: const WormEffect(
                          spacing: 16,
                          dotColor: Colors.black26,
                          activeDotColor: Color.fromARGB(255, 6, 35, 88)),
                      onDotClicked: (index) => contaroller.animateToPage(index,
                          duration: const Duration(microseconds: 500),
                          curve: Curves.easeIn),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        contaroller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeOut);
                      },
                      child: Text("next",
                          style: TextStyle(
                              fontSize: 24,
                              color: Theme.of(context).primaryColor))),
                ],
              ),
            ),
    );
  }
}
