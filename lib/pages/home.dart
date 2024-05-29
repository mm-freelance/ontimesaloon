import 'package:flutter/material.dart';

import 'package:salon/pages/signup_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const SignUpPage(),
              ),
            );
          },
          child: const Center(
              child: Text(
            'Home Page',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ))),
    );
  }
}
