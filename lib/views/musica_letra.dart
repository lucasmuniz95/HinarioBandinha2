import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

import '../model/musica_model.dart';

class MusicaLetra extends StatefulWidget {
  const MusicaLetra({Key? key}) : super(key: key);

  @override
  State<MusicaLetra> createState() => _MusicaLetra();
}

class _MusicaLetra extends State<MusicaLetra> {
  late final Musica musica;
  late PdfControllerPinch pdfPinchController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    musica = (ModalRoute.of(context)!.settings.arguments as Musica);
    pdfPinchController = PdfControllerPinch(
      document: PdfDocument.openAsset('assets/doc/titulo3.pdf'),
      initialPage: musica.paginainicial,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(musica.nome),
      ),
      body: Expanded(
        child: PdfViewPinch(
          scrollDirection: Axis.horizontal,
          controller: pdfPinchController,
        ),
      ),
    );
  }
}
