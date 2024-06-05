import 'package:flutter/material.dart';

class buildPage extends StatelessWidget {
  final Color color;
  final String urlImage;
  final String title;
  final String subTitle;

  const buildPage(
      {super.key,
      required this.color,
      required this.urlImage,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(children: [
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100)),
              color: Color.fromARGB(225, 228, 222, 222)),
          width: double.infinity,
          height: 400,
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Image.asset(
              urlImage,
              // fit: BoxFit.cover,
              width: 200,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 24,
        ),
        Center(
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            child: Text(
              subTitle,
              style: const TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
        )
      ]),
    );
  }
}
