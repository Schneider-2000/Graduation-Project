// ignore_for_file: unused_label

import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, this.child, required List<Stack> children});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg1.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: child!,
          ),
        ],
      ),
    );
  // ignore: dead_code
  child: Stack(
    children: <Widget> [
      Positioned(
        width: 150,
        height: 200,
        top: 300,
        child:Container(
          decoration: const BoxDecoration(
            image:DecorationImage(
              image: AssetImage('assets/images/1.png')
            ) ),
        ) ,
        )
    ],) ;
  }
}
