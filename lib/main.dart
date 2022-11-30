import 'package:curso_flutter_basico/controllers/theme_controller.dart';
import 'package:curso_flutter_basico/ui/pages/detalles_contacto_page.dart';
import 'package:curso_flutter_basico/ui/pages/form_contacto_page.dart';
import 'package:curso_flutter_basico/ui/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  // ignore: prefer_const_constructors_in_immutables
  MyApp({super.key});

  final ThemeController _controller = ThemeController.instancia;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _controller.isDark,
        builder: (context, dynamic value, child) {
          return MaterialApp(
              routes: {
                'detalle_contacto': (context) => const DetallesContactoPage(),
                'form_contacto': (context) => const FormContactoPage(),
              },
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                //brightness: value ? Brightness.dark : Brightness.light,
                primarySwatch: Colors.indigo,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              home: HomePage());
        });
  }
}
