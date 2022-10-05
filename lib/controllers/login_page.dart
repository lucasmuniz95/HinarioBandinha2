import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String loginAcesso = 'teresinha';
  String senha = '123';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(child: Image.asset('assets/images/logo2.png')),
                const SizedBox(
                  height: 50,
                ),
                TextField(
                    onChanged: (text) => loginAcesso = text,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        labelText: "Dados de Acesso",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ))),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  onChanged: (text) => senha = text,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Senha",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (loginAcesso.toLowerCase() == "teresinha" &&
                        senha == '123') {
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      debugPrint("Errado");
                    }
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                              (states) => Colors.blue[900])),
                  child: const Text("Entrar"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
