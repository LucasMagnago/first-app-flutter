import 'package:flutter/material.dart';
import 'home.dart';

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.teal),
    );
  }
}
