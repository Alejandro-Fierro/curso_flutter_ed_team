import 'package:curso_flutter_ed_team/models/persona_modelo.dart';
import 'package:flutter/material.dart';

class DetallesContactoPage extends StatelessWidget {
  //const DetallesContactoPage({Key? key}) : super(key: key);

  final PersonaModelo persona;
  final String contenido;

  // ignore: use_key_in_widget_constructors
  const DetallesContactoPage({ required this.persona,  required this.contenido});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(persona.nombre ?? ""),
        centerTitle: true,
      ),
      body: Center(
        child:
          Text(contenido)),
      );

    
  }
}
