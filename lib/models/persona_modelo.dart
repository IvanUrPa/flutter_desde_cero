import 'package:flutter/material.dart';

class PersonaModelo {
  IconData iconoIzquierda;
  IconData iconoDerecha;
  String nombre;
  String descripcion;
  String nickname;
  String telefono;

  PersonaModelo(
      {required this.iconoIzquierda,
      required this.iconoDerecha,
      required this.nombre,
      required this.descripcion,
      required this.nickname,
      required this.telefono});
}

PersonaModelo persona1 = PersonaModelo(
    nombre: 'Ivancho Urbano 2',
    descripcion: 'Ejemplo de modelo 1',
    iconoDerecha: Icons.message,
    iconoIzquierda: Icons.person,
    nickname: 'Osesno',
    telefono: '5553259000');

PersonaModelo persona2 = PersonaModelo(
    nombre: 'Juancho Palafox',
    descripcion: 'Ejemplo de modelo 2',
    iconoDerecha: Icons.message,
    iconoIzquierda: Icons.person,
    nickname: 'JJames',
    telefono: '5553258000');

PersonaModelo persona3 = PersonaModelo(
    nombre: 'Pancho Marañón',
    descripcion: 'Ejemplo de modelo 3',
    iconoDerecha: Icons.message,
    iconoIzquierda: Icons.person,
    nickname: 'Panchisco',
    telefono: '5553257000');
