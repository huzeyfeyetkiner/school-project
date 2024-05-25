import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final double heightValue =
        MediaQuery.of(context).size.height / 1.7; // half of screen height

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/loginbg.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 50.0,
              left: 16.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(30, 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90),
                    side: const BorderSide(
                      width: 1,
                      color: Color.fromARGB(235, 84, 84, 84),
                      style: BorderStyle.solid,
                    ),
                  ),
                  shadowColor: Colors.transparent,
                  elevation:
                      0.0, // No shadow, we use this 2 code block remove shadow
                ),
                child: const Icon(Icons.arrow_back),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: heightValue,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                      ),
                    ],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Yummy',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                          ),
                          Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  labelStyle:
                                      const TextStyle(color: Colors.black),
                                  hintText: 'E-mail',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                validator: (String? girilenDeger) {
                                  if (girilenDeger!.isEmpty) {
                                    return 'You must enter an email address';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 20),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelStyle:
                                      const TextStyle(color: Colors.black),
                                  hintText: 'Password',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                validator: (String? girilenDeger) {
                                  if (girilenDeger!.isEmpty) {
                                    return 'You must enter a password';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.pushNamed(context, '/second');
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(350, 55),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    side: const BorderSide(
                                      width: 1,
                                      color: Color.fromARGB(236, 237, 103, 1),
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  backgroundColor:
                                      const Color.fromARGB(236, 237, 103, 1),
                                  shadowColor: Colors.transparent,
                                  elevation: 0.0,
                                ),
                                child: const Text('Log In',
                                    style: TextStyle(color: Colors.white)),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/signup');
                                },
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(350, 55),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    side: const BorderSide(
                                      width: 1,
                                      color: Color.fromARGB(236, 237, 103, 1),
                                    ),
                                  ),
                                  shadowColor: Colors.transparent,
                                  elevation: 0.0,
                                ),
                                child: const Text('Continue without login',
                                    style: TextStyle(color: Colors.black)),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('Don\'t have an account?'),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/signup');
                                    },
                                    child: const Text('Sign Up',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                236, 237, 103, 1))),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
