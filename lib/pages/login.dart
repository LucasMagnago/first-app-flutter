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
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 150,
              ),
              const SizedBox(
                width: 150,
                height: 150,
                child: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 100,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                width: 250,
                height: 50,
                color: Colors.white,
                child: const Text('Login: '),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 250,
                height: 50,
                color: Colors.white,
                child: const Text('Password: '),
              ),
              const SizedBox(
                height: 35,
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: const Text(
                    'Button',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
