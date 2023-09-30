import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(30, 25, 44, 1),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.network(
                'https://lp.dio.me/wp-content/uploads/2023/03/LOGO-DIO-COLOR.png',
                height: 90,
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                'Já tem cadastro?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Faça seu login e make the change._',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.all(15),
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 2,
                      color: Color.fromRGBO(134, 71, 173, 1),
                    ),
                  ),
                ),
                child: const Text(
                  'E-mail: ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.all(15),
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 2,
                      color: Color.fromRGBO(134, 71, 173, 1),
                    ),
                  ),
                ),
                child: const Text(
                  'Senha: ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.all(15),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(134, 71, 173, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'ENTRAR',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              const Text(
                'Esqueci minha senha',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Criar conta',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
