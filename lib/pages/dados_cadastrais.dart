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
  double chosenSalary = 1000;
  int experienceTime = 0;

  bool saving = false;

  List<DropdownMenuItem> getExperienceTimes(int max) {
    var items = <DropdownMenuItem>[];
    for (var i = 0; i <= max; i++) {
      items.add(
        DropdownMenuItem(
          value: i,
          child: Text(i.toString()),
        ),
      );
    }
    return items;
  }

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
        child: saving
            ? const Center(child: CircularProgressIndicator())
            : ListView(
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
                    text: 'Tempo de experiência',
                  ),
                  DropdownButton(
                    value: experienceTime,
                    items: getExperienceTimes(50).toList(),
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        experienceTime = value!;
                      });
                    },
                  ),
                  TextLabel(
                    text:
                        'Pretenção salárial: R\$ ${chosenSalary.round().toString()}',
                  ),
                  Slider(
                    min: 1000,
                    max: 20000,
                    value: chosenSalary,
                    onChanged: (value) {
                      setState(() {
                        chosenSalary = value;
                      });
                    },
                  ),
                  TextButton(
                    onPressed: () {
                      if (nameController.text.trim().length < 3) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('O nome deve ser preenchido'),
                          ),
                        );
                        return;
                      }
                      if (dateController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Data de nascimento inválida'),
                          ),
                        );
                        return;
                      }
                      if (selectedLevel.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                'O nível de experiência deve ser selecionado'),
                          ),
                        );
                        return;
                      }
                      if (selectedLanguages.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                'Deve ser selecionado ao menos uma linguagem'),
                          ),
                        );
                        return;
                      }
                      if (experienceTime == 0) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content:
                                Text('Deve ter ao menos um ano de experiência'),
                          ),
                        );
                        return;
                      }
                      if (chosenSalary == 0) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                'A pretenção salárial deve ser maior que zero'),
                          ),
                        );
                        return;
                      }

                      setState(() {
                        saving = true;
                      });

                      Future.delayed(const Duration(seconds: 5), () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Dados salvos com sucesso'),
                          ),
                        );
                        Navigator.pop(context);
                      });
                    },
                    child: const Text('SALVAR'),
                  ),
                ],
              ),
      ),
    );
  }
}
