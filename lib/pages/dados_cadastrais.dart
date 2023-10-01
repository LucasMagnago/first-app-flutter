import 'package:first_app_flutter/shared/widgets/text_label.dart';
import 'package:flutter/material.dart';

class DadosCadastraisPage extends StatefulWidget {
  const DadosCadastraisPage({Key? key}) : super(key: key);

  @override
  State<DadosCadastraisPage> createState() => _DadosCadastraisPageState();
}

class _DadosCadastraisPageState extends State<DadosCadastraisPage> {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController dateController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus dados'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextLabel(
              text: 'Nome',
            ),
            TextField(
              controller: nameController,
            ),
            const SizedBox(
              height: 10,
            ),
            const TextLabel(
              text: 'Data de nascimento',
            ),
            TextField(
              readOnly: true,
              controller: dateController,
              onTap: () async {
                var date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900, 1, 1),
                  lastDate: DateTime.now(),
                );

                if (date != null) {
                  dateController.text = date.toString();
                }
              },
            ),
            TextButton(
              onPressed: () {
                print(nameController.text);
                print(dateController.text);
              },
              child: const Text('SALVAR'),
            ),
          ],
        ),
      ),
    );
  }
}
