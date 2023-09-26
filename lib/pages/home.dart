import 'package:first_app_flutter/service/number_generator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contNumbers = 0;
  int randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WalkWise',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Random number: $randomNumber'),
            ),
            Center(
              child: Text('Quantidade de números gerados: $contNumbers'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            randomNumber = NumberGenerator.numberGenerator(10000);
            contNumbers += 1;
          });
        },
      ),
    );
  }
}
