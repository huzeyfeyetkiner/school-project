import 'package:flutter/material.dart';
import 'package:school_project/initialscreen.dart';
import 'package:school_project/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const InitialScreen(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}
