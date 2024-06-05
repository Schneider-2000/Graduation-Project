import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class GetApi3 extends StatefulWidget {
  const GetApi3({super.key});

  @override
  State<GetApi3> createState() => _GetApi3State();
}

class _GetApi3State extends State<GetApi3> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  void getdata() async {
    try {
      var responve =
          Dio().get('https://alls2024.pythonanywhere.com/api/generalLessson/7');
      print(responve);
    } catch (e) {
      print("Connection fild");
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
