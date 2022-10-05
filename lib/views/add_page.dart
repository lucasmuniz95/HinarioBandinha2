import 'package:flutter/material.dart';
import 'package:hinariobandinha/views/menuDrawer_view.dart';

class AdicionarPage extends StatefulWidget {
  const AdicionarPage({Key? key}) : super(key: key);

  @override
  State<AdicionarPage> createState() => AdicionarPageState();
}

class AdicionarPageState extends State<AdicionarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: menu(context),
      ),
      appBar: AppBar(),
    );
  }
}
