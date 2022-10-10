// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

Widget menu(context) {
  return Drawer(
    width: 200,
    child: Column(
      children: [
        UserAccountsDrawerHeader(
            currentAccountPicture: const CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage('assets/images/logo2.png'),
            ),
            decoration: BoxDecoration(
              color: Colors.blue[900],
            ),
            accountName: const Text('EJC Santa Teresinha'),
            accountEmail: const Text('Bandinha')),

        ListTile(
            style: ListTileStyle.drawer,
            leading: const Icon(Icons.home),
            title: const Text('Inicio'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/home');
            }),
        //ListTile(
        //    leading: const Icon(Icons.music_note),
        //    title: const Text('Adicionar musica'),
        //    onTap: () {
        //      Navigator.of(context).pushReplacementNamed('/add');
        //    }),
        ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Sair'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            })
      ],
    ),
  );
}
