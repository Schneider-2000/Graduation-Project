import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {
  final controller;
  final bool obscureText; 
  final String hintText;
  final String label;

  
   const MyTextField({
    super.key,
    this.controller,
    required this.obscureText,
    required this.hintText,
    required this.label,
   
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: controller,
                            obscureText: obscureText,
                            decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.all(Radius.circular(5) )
                              ),
                            label: Text(label),
                            hintText: hintText,
                            hintStyle: const TextStyle(
                              color: Colors.black26,
                            ),
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            
                            )
                          ),
                        );
  }
}