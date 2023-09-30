import 'package:first_app_flutter/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: GoogleFonts.aDLaMDisplayTextTheme(),
      ),
    );
  }
}
