import 'package:first_app_flutter/pages/dados_cadastrais.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext bc) {
                    return Wrap(
                      children: [
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          leading: const Icon(Icons.camera),
                          title: const Text('Camera'),
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          leading: const Icon(Icons.photo_album),
                          title: const Text('Galeria'),
                        ),
                      ],
                    );
                  });
            },
            child: UserAccountsDrawerHeader(
              accountName: const Text('Lucas'),
              accountEmail: const Text('lucas@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Image.asset(
                  './assets/icons/user.png',
                  scale: 0.8,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => {
              Navigator.pop(context),
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DadosCadastraisPage(),
                ),
              ),
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              width: double.infinity,
              child: const Text('Dados cadastrais'),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () => {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext bc) {
                  return Container(
                    padding: const EdgeInsets.all(16),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Termos de uso e privacidade',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  );
                },
              )
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: const Text('Termos de uso e privacidade'),
            ),
          ),
          const Divider(),
          InkWell(
              onTap: () => {},
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: const Text('Configurações'))),
          const Divider(),
        ],
      ),
    );
  }
}
