import 'package:flutter/material.dart';

class PersonaModelo {
    IconData? iconizq;
    IconData? iconder;
   String? nombre;
   String? descripcion;
   String? nickname;

  PersonaModelo(
      {  this.iconizq,
       this.iconder,
       this.nombre,
       this.descripcion,
       this.nickname});
}

PersonaModelo persona1 = PersonaModelo(
      iconizq: Icons.person,
      iconder: Icons.message,
      nombre: 'Luis Fierro',
      descripcion: 'Flutter Developer',
      nickname: "Koala");
      
  PersonaModelo persona2 = PersonaModelo(
      iconizq: Icons.person,
      iconder: Icons.message,
      nombre: 'Leo Mercado',
      descripcion: 'Flutter Developer Sr.',
      nickname: "Merk");
  
  PersonaModelo persona3 = PersonaModelo(
      iconizq: Icons.person,
      iconder: Icons.message,
      nombre: 'Jordi Espinoza',
      descripcion: 'Flutter Developer Jr.',
      nickname: "Jordi");

