import "package:flutter/material.dart";

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.black.withOpacity(1),
          backgroundColor: Colors.orange,
          title: const Text(
            "Profile",
            style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/recipes');
              },
              child: const Icon(
                Icons.restaurant,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: const Column(
          children: [
            Text(
              "Profile",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
