import 'package:flutter/material.dart';
import 'package:flutter_training/screens/profile.dart';
import 'package:flutter_training/screens/signup.dart';

void main() {
  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Training App',
      home: SignUpScreen(),
    );
  }
}
