import 'package:flutter/material.dart';
import 'package:tada_clone_coding/login/screen/login_page.dart';

void main() {
  runApp(const Tada());
}

class Tada extends StatelessWidget {
  const Tada({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tada study',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LoginPage(),
    );
  }
}
