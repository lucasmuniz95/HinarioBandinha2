import 'package:flutter/material.dart';
import 'package:hinariobandinha/controllers/login_page.dart';
import 'package:hinariobandinha/views/add_page.dart';
import 'package:hinariobandinha/views/musica_letra.dart';

import 'views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData tema = ThemeData();
    return MaterialApp(
        theme: tema.copyWith(
            colorScheme: tema.colorScheme.copyWith(
          primary: Colors.blue[900],
        )),
        debugShowCheckedModeBanner: false,
        title: "Hinario Bandinha EJC Sta Teresinha",
        initialRoute: '/',
        routes: {
          '/': (context) => const LoginPage(),
          '/home': (context) => const HomePage(),
          '/add': (context) => const AdicionarPage(),
          '/music': (context) => const MusicaLetra(),
          //'/pdf': (context) => const PdfViewPage(),
        });
  }
}
