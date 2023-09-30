import 'package:first_app_flutter/pages/dados_cadastrais.dart';
import 'package:first_app_flutter/pages/page1.dart';
import 'package:first_app_flutter/pages/page2.dart';
import 'package:first_app_flutter/pages/page3.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => {
                    Navigator.pop(context),
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DadosCadastraisPage(
                          data: 'Dados enviados da HomePage',
                          lstData: ['Nome', 'CPF', 'Data de Nascimento'],
                        ),
                      ),
                    ),
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    width: double.infinity,
                    child: const Text('Dados cadastrais'),
                  ),
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () => {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 5,
                    ),
                    child: const Text('Termos de uso e privacidade'),
                  ),
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: () => {},
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 5,
                        ),
                        child: const Text('Configurações'))),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        body: PageView(
          children: const [
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
      ),
    );
  }
}
