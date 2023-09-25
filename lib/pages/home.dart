import 'package:first_app_flutter/service/number_generator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WalkWise'),
      ),
      body: Center(
        child: Text('Random number: $randomNumber'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            randomNumber = NumberGenerator.numberGenerator(10000);
          });
        },
      ),
    );
  }
}
