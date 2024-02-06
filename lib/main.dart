import 'package:flutter/material.dart';
import 'package:green_drinks/views/entry_view.dart';
import 'package:green_drinks/views/login_view.dart';
import 'package:green_drinks/views/signup_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EntryView(),
    );
  }
}