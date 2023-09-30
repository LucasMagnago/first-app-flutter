import 'package:flutter/material.dart';

class DadosCadastraisPage extends StatelessWidget {
  final String data;
  final List<String> lstData;

  const DadosCadastraisPage(
      {Key? key, required this.data, required this.lstData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dados Cadastrais'),
      ),
      body: Center(
        child: Text(data),
      ),
    );
  }
}
