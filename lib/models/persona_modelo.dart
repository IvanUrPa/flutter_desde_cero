import 'package:flutter/material.dart';

class PersonaModelo {
  final IconData iconoIzquierda;
  final IconData iconoDerecha;
  final String nombre;
  final String descripcion;
  final String nickname;

  PersonaModelo(
      {required this.iconoIzquierda,
      required this.iconoDerecha,
      required this.nombre,
      required this.descripcion,
      required this.nickname});
}

PersonaModelo persona1 = PersonaModelo(
    nombre: 'Ivancho Urbano 2',
    descripcion: 'Ejemplo de modelo 1',
    iconoDerecha: Icons.message,
    iconoIzquierda: Icons.person,
    nickname: 'Osesno');

PersonaModelo persona2 = PersonaModelo(
    nombre: 'Juancho Palafox',
    descripcion: 'Ejemplo de modelo 2',
    iconoDerecha: Icons.message,
    iconoIzquierda: Icons.person,
    nickname: 'JJames');

PersonaModelo persona3 = PersonaModelo(
    nombre: 'Pancho Marañón',
    descripcion: 'Ejemplo de modelo 3',
    iconoDerecha: Icons.message,
    iconoIzquierda: Icons.person,
    nickname: 'Panchisco');
