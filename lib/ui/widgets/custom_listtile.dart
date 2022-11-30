import 'package:curso_flutter_basico/models/persona_modelo.dart';
import 'package:curso_flutter_basico/ui/pages/detalles_contacto_page.dart';
//import 'package:curso_flutter_basico/ui/pages/detalles_contacto_page.dart';
import 'package:flutter/material.dart';

const IconData whatsAppIcon = IconData(0xea93, fontFamily: 'CustomIcon');

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
        width: 100.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(whatsAppIcon)),
            // const SizedBox(
            //   width: 5.0,
            // ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          ],
        ),
      ),
      leading: CircleAvatar(
        child: Text(person.nombre[0].toUpperCase()),
      ),
      title: Text(person.nombre),
      subtitle: Text(person.nickname),
    );
  }
}
