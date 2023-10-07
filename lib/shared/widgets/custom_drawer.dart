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
          UserAccountsDrawerHeader(
            accountName: const Text('Lucas'),
            accountEmail: const Text('lucas@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: Image.asset(
                './assets/icons/user.png',
                scale: 0.8,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  width: double.infinity,
                  child: const Text('Dados cadastrais'),
                ),
              ),
              const Divider(),
              InkWell(
                onTap: () => {},
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: const Text('Termos de uso e privacidade'),
                ),
              ),
              const Divider(),
              InkWell(
                  onTap: () => {},
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: const Text('Configurações'))),
              const Divider(),
            ],
          ),
        ],
      ),
    );
  }
}
