import 'package:curso_flutter_basico/models/persona_modelo.dart';
import 'package:curso_flutter_basico/ui/pages/detalles_contacto_page.dart';
//import 'package:curso_flutter_basico/ui/pages/detalles_contacto_page.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final PersonaModelo person;
  // ignore: prefer_const_constructors_in_immutables
  CustomListTile({super.key, required this.person});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.pushNamed(context, 'detalle_contacto',
            arguments: DetallesContactoPageArguments(
                persona: person, contenido: "Contenido"));
      },
      trailing: SizedBox(
        width: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(person.iconoDerecha),
            const SizedBox(
              width: 8.0,
            ),
            const Icon(Icons.call),
          ],
        ),
      ),
      leading: Icon(person.iconoIzquierda),
      title: Text(person.nombre),
      subtitle: Text(person.descripcion),
    );
  }
}
