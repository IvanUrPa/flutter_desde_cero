import 'package:flutter/material.dart';

class FormContactoPage extends StatelessWidget {
  const FormContactoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Nuevo contacto'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              //Navigator.of(context).pop();
              Navigator.pop(context);
            },
            child: const Text("Ir hacia atras")),
      ),
    );
  }
}
