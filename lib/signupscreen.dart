import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isTermsAccepted = false; // for checkbox

  @override
  Widget build(BuildContext context) {
    final double heightValue =
        MediaQuery.of(context).size.height / 1.6; //height of white box

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/loginbg.png'), fit: BoxFit.cover)),
          child: Column(
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
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
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
                              color: Colors.orange),
                        ),
                        Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                labelStyle:
                                    const TextStyle(color: Colors.black),
                                hintText: 'E-mail',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              validator: (String? girilenDeger) {
                                if (girilenDeger!.isEmpty) {
                                  return 'You must enter an email address';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelStyle:
                                    const TextStyle(color: Colors.black),
                                hintText: 'Password',
                                // icon: const Icon(Icons.lock),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              validator: (String? girilenDeger) {
                                if (girilenDeger!.isEmpty) {
                                  return 'You must enter a password';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelStyle:
                                    const TextStyle(color: Colors.black),
                                hintText: 'Phone Number',
                                // icon: const Icon(Icons.lock),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              validator: (String? girilenDeger) {
                                if (girilenDeger!.isEmpty) {
                                  return 'You must enter a valid phone number';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    activeColor:
                                        const Color.fromARGB(236, 237, 103, 1),
                                    value: _isTermsAccepted,
                                    onChanged: (bool? value) {
                                      // ignore: avoid_print
                                      setState(() {
                                        _isTermsAccepted = value!;
                                      });
                                    }),
                                const Text(
                                  "I have read and accept the user agreement.",
                                  style: TextStyle(fontSize: 12.0),
                                ),
                              ],
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
                                        style: BorderStyle.solid),
                                  ),
                                  backgroundColor:
                                      const Color.fromARGB(236, 237, 103, 1),
                                  shadowColor: Colors.transparent,
                                  elevation:
                                      0.0, // No shadow, we use this 2 code block remove shadow
                                ),
                                child: const Text('Sign Up',
                                    style: TextStyle(color: Colors.white)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('Do you have an account?'),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/login');
                                    },
                                    child: const Text('Login',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                236, 237, 103, 1))),
                                  ),
                                ],
                              )
                            ]),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
