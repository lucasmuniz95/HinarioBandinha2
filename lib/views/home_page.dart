import 'package:flutter/material.dart';
import 'package:hinariobandinha/model/musica_model.dart';
import 'package:hinariobandinha/views/menuDrawer_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: menu(context),
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Hinario Bandinha",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      body: ListView(
        children: nomeMusicas.map((e) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Container(
              alignment: Alignment.center,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: ListTile(
                trailing: Checkbox(
                  value: e.ensaio,
                  onChanged: ((value) {
                    setState(() {
                      e.ensaio = !e.ensaio;
                    });
                  }),
                ),
                title: Text(
                  e.nome,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('/music', arguments: e);
                },
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
