import 'package:curso_flutter_basico/controllers/lista_contactos_controller.dart';
import 'package:curso_flutter_basico/models/persona_modelo.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

GlobalKey<FormState> formContactoKey = GlobalKey<FormState>();
GlobalKey<ScaffoldState> formPageKey = GlobalKey<ScaffoldState>();

class FormContactoPage extends StatefulWidget {
  const FormContactoPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FormContactoPageState createState() => _FormContactoPageState();
}

class _FormContactoPageState extends State<FormContactoPage> {
  late TextEditingController _nombreController;
  late TextEditingController _nicNameController;
  late TextEditingController _telefonoController;

  final ListaContactosController _controller =
      ListaContactosController.instancia;
  final PersonaModelo _persona = PersonaModelo(
      descripcion: '',
      iconoDerecha: Icons.message,
      iconoIzquierda: Icons.person,
      nickname: '',
      nombre: '',
      telefono: '');

  @override
  void initState() {
    super.initState();
    _nombreController = TextEditingController(text: "");
    _nicNameController = TextEditingController(text: "");
    _telefonoController = TextEditingController(text: "");
  }

  String? validate(String value, String key) =>
      value.isEmpty ? "Inserte su {$key}" : null;

  static bool validateAll() {
    if (formContactoKey.currentState!.validate()) {
      return true;
    } else {
      //formPageKey.currentState.showSnackBar(const SnackBar(content: Text('Inserta todos los datos necesarios')));
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: formPageKey,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: const Text('Nuevo contacto'),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formContactoKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp("[A-Z a-z]"))
                    ],
                    validator: (dynamic value) => validate(value, "nombre"),
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        hintText: 'Ej. Ivan Urbano',
                        labelText: 'Nombre',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor))),
                    onChanged: (value) => _persona.nombre = value,
                    controller: _nombreController,
                  ),
                  const SizedBox(height: 8.0),
                  Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(8.0),
                        border:
                            Border.all(color: Theme.of(context).primaryColor)),
                    child: TextFormField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp("[A-Z a-z]"))
                      ],
                      validator: (dynamic value) => validate(value, "nickname"),
                      decoration: const InputDecoration(
                          hintText: 'NicName',
                          labelText: 'NickName',
                          prefixIcon: Icon(Icons.person),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                      onChanged: (value) => _persona.nickname = value,
                      controller: _nicNameController,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    //inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                    ],
                    validator: (dynamic value) => validate(value, "telefono"),
                    decoration: const InputDecoration(
                      hintText: 'Ej. 5553259000',
                      labelText: 'Telefono',
                      prefixIcon: Icon(Icons.call),
                    ),
                    onChanged: (value) => _persona.telefono = value,
                    controller: _telefonoController,
                  ),
                  const SizedBox(height: 32.0),
                  ElevatedButton(
                      onPressed: () {
                        if (validateAll()) {
                          _controller.contactos.value =
                              List.from(_controller.contactos.value)
                                ..add(_persona);
                        }
                      },
                      child: const Text(
                        'Agregar Contacto',
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
