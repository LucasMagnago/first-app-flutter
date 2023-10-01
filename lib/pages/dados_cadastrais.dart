import 'package:first_app_flutter/repositories/language_repository.dart';
import 'package:first_app_flutter/shared/widgets/text_label.dart';
import 'package:flutter/material.dart';

import '../repositories/level_repository.dart';

class DadosCadastraisPage extends StatefulWidget {
  const DadosCadastraisPage({Key? key}) : super(key: key);

  @override
  State<DadosCadastraisPage> createState() => _DadosCadastraisPageState();
}

class _DadosCadastraisPageState extends State<DadosCadastraisPage> {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController dateController = TextEditingController(text: '');
  var levelRepository = LevelRepository();
  var languageRepository = LanguageRepository();
  List<String> lstLevels = [];
  var selectedLevel = '';
  List<String> lstLanguages = [];
  var selectedLanguages = [];

  @override
  void initState() {
    lstLevels = levelRepository.getLevels();
    lstLanguages = languageRepository.getLanguages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus dados'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            const TextLabel(
              text: 'Nome',
            ),
            TextField(
              controller: nameController,
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
            const TextLabel(
              text: 'Nível de experiência',
            ),
            Column(
              children: lstLevels
                  .map(
                    (l) => RadioListTile(
                      dense: true,
                      title: Text(
                        l.toString(),
                      ),
                      selected: selectedLevel == l.toString(),
                      value: l.toString(),
                      groupValue: selectedLevel,
                      onChanged: (value) => setState(() {
                        selectedLevel = value!;
                      }),
                    ),
                  )
                  .toList(),
            ),
            TextButton(
              onPressed: () {
                print(nameController.text);
                print(dateController.text);
              },
              child: const Text('SALVAR'),
            ),
            const TextLabel(
              text: 'Linguagem preferidas',
            ),
            Column(
              children: lstLanguages
                  .map((l) => CheckboxListTile(
                        dense: true,
                        title: Text(l.toString()),
                        value: selectedLanguages.contains(l.toString()),
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            if (value!) {
                              selectedLanguages.add(l.toString());
                            } else {
                              selectedLanguages.remove(l.toString());
                            }
                          });
                        },
                      ))
                  .toList(),
            ),
            const TextLabel(
              text: 'Pretenção salárial',
            ),
          ],
        ),
      ),
    );
  }
}
