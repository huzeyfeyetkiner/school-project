import 'package:flutter/material.dart';
import 'package:school_project/initialscreen.dart';
import 'package:school_project/loginscreen.dart';
import 'package:school_project/profilescreen.dart';
import 'package:school_project/recipesscreen.dart';
import 'package:school_project/signupscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Application',
      initialRoute: '/',
      routes: {
        '/': (context) => const InitialScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/recipes': (context) => const RecipesScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
