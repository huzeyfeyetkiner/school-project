import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 70,
              ),
              const Text(
                'Yummy',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
              ),
              Image.asset('images/initialscreen.png'),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: const BorderSide(
                                width: 1,
                                color: Color.fromARGB(236, 237, 103, 1),
                                style: BorderStyle.solid),
                          ),
                          shadowColor: Colors.transparent,
                          elevation:
                              0.0, // No shadow, we use this 2 code block remove shadow
                        ),
                        child: const Text('Log In',
                            style: TextStyle(color: Colors.orange)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: const BorderSide(
                                width: 1,
                                color: Color.fromARGB(236, 237, 103, 1),
                                style: BorderStyle.solid),
                          ),
                          backgroundColor: Color.fromARGB(236, 237, 103, 1),
                          shadowColor: Colors.transparent,
                          elevation:
                              0.0, // No shadow, we use this 2 code block remove shadow
                        ),
                        child: const Text('Sign Up',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/recipes');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(350, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(
                            width: 1,
                            color: Color.fromARGB(236, 237, 103, 1),
                            style: BorderStyle.solid),
                      ),
                      backgroundColor: Color.fromARGB(236, 237, 103, 1),
                      shadowColor: Colors.transparent,
                      elevation:
                          0.0, // No shadow, we use this 2 code block remove shadow
                    ),
                    child: const Text('Continue as Guest',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
