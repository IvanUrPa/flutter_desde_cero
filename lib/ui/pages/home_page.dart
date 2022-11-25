import 'package:curso_flutter_basico/models/persona_modelo.dart';
import 'package:curso_flutter_basico/ui/widgets/custom_buttons.dart';
import 'package:curso_flutter_basico/ui/widgets/custom_listtile.dart';
import 'package:flutter/material.dart';

List<PersonaModelo> persons = [
  persona1,
  persona2,
  persona3,
  persona1,
  persona2,
  persona3,
  persona1,
  persona2,
  persona3,
  persona1,
  persona2,
  persona3,
  persona1,
  persona2,
  persona3
];

List<Widget> pages = [
  // ignore: avoid_unnecessary_containers
  Container(
    child: Column(
      children: <Widget>[
        const CustomButton(),
        Expanded(
          child: ListView(
            children: <Widget>[
              for (int i = 0; i < persons.length; i++)
                CustomListTile(person: persons[i])
            ],
          ),
        )
      ],
    ),
  ),
  Container(color: Colors.blue)
];

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String titulo = "Material App";

  int picker = 0;

  @override
  void initState() {
    super.initState();
    picker;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: Column(
          children: <Widget>[
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  color: Theme.of(context).primaryColor,
                )),
            ListTile(
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  picker = 0;
                });
              },
            ),
            ListTile(
              title: const Text('Segunda Pantalla'),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  picker = 1;
                });
              },
            )
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Boton mas presionado");
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.image),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.message),
            )
          ],
          title: Text(titulo),
        ),
        body: pages[picker]);
  }
}
