import 'package:curso_flutter_basico/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:curso_flutter_basico/controllers/main_controller.dart';
//import 'package:google_fonts/google_fonts.dart';

//class CustomButton extends StatefulWidget {
// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({super.key});

  ValueNotifier<String> titulo = ValueNotifier<String>("Agregar Contacto");
  final ThemeController _controller = ThemeController.instancia;

//   @override
//   State<CustomButton> createState() => _CustomButtonState();
// }

// class _CustomButtonState extends State<CustomButton> {
  // String titulo = "";

  // @override
  // void initState() {
  //   super.initState();
  //   titulo = "Agregar Contacto";
  // }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          titulo.value = "Value notifier button";
          _controller.changeTheme(true);
          debugPrint("Boton mas presionado");
          presionadoDeBoton();
          // setState(() {
          //   titulo = "Titulo del boton";
          // });
          Navigator.pushNamed(context, 'form_contacto');
        },
        child: ValueListenableBuilder(
          valueListenable: titulo,
          builder: (context, dynamic value, child) {
            return Container(
              height: 60.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(8.0)),
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(value,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 20.0,
                        fontFamily: 'Better')),
              ),
            );
          },
        ));
  }
}
