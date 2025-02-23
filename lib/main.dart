import 'package:assignment_1/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment 1',
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFF000000)),
      home: const HomeScreen(),
    );
  }
}
