import 'package:first_app_flutter/service/number_generator.dart';
import 'package:flutter/material.dart';

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
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        color: Colors.teal[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                color: Colors.pink,
                child: Text('Random number: $randomNumber'),
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: Container(
                color: Colors.purple,
                child: Text('Quantidade de números gerados: $contNumbers'),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    child: Text('Nome: '),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.blue,
                    child: Text('Lucas Magnago de Oliveira'),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    child: Text('RIGHT'),
                  ),
                ),
              ],
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
