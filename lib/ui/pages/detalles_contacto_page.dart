import 'package:curso_flutter_basico/models/persona_modelo.dart';
import 'package:flutter/material.dart';

class DetallesContactoPage extends StatelessWidget {
  const DetallesContactoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DetallesContactoPageArguments argumentos = ModalRoute.of(context)!
        .settings
        .arguments as DetallesContactoPageArguments;
    return Scaffold(
      appBar: AppBar(title: Text(argumentos.persona.nombre), centerTitle: true),
      body: Center(
        child: Text(argumentos.contenido),
      ),
    );
  }
}

class DetallesContactoPageArguments {
  final PersonaModelo persona;
  final String contenido;

  DetallesContactoPageArguments(
      {required this.persona, required this.contenido});
}
