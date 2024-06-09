import 'package:edtech_app/homepage.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Read Books App',
      home: Scaffold(
        body: Homepage(),
      ),
    );
  }
}
