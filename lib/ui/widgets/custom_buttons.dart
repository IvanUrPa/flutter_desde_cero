import 'package:flutter/material.dart';
import 'package:curso_flutter_basico/controllers/main_controller.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  String titulo = "";

  @override
  void initState() {
    super.initState();
    titulo = "Agregar Contacto";
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        presionadoDeBoton();
        // setState(() {
        //   titulo = "Titulo del boton";
        // });
        Navigator.pushNamed(context, 'form_contacto');
      },
      child: Container(
        height: 60.0,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(8.0)),
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            titulo,
            style: TextStyle(
                color: Theme.of(context).primaryColor, fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
