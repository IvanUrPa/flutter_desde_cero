import 'package:curso_flutter_basico/ui/pages/informacion_usuario_page.dart';
import 'package:curso_flutter_basico/ui/pages/lista_contactos_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

List<Widget> pages = [ListaContactosPage(), const InformacionUsuarioPage()];

GlobalKey<ScaffoldState> homeKey = GlobalKey<ScaffoldState>();

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
        key: homeKey,
        drawer: Drawer(
            child: Column(
          children: <Widget>[
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  color: Theme.of(context).primaryColor,
                )),
            ListTile(
              leading: const Icon(MdiIcons.homeCircle),
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  picker = 0;
                });
              },
            ),
            ListTile(
              leading: const Icon(MdiIcons.accountBox),
              title: const Text('Usuario'),
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
