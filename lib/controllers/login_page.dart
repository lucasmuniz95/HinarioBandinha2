import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

String loginAcessoField = '';
List<String> loginAcesso = [
  'Andrade',
  'Isabely',
  'Leonam',
  'Mayane',
  'Anagely',
  'Leo',
  'Caique',
  'Marlom',
  'Castelo'
];

class _LoginPageState extends State<LoginPage> {
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
                    onChanged: (text) => loginAcessoField = text,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        labelText: "Digite seu nome",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ))),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    for (var i = 0; i < loginAcesso.length; i++) {
                      if (loginAcessoField.toLowerCase() == loginAcesso[i]) {
                        Navigator.of(context).pushReplacementNamed('/home');
                      } else {
                        const TextButton(onPressed: null, child: Text('teste'));
                      }
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
