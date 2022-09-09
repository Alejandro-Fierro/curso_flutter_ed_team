
import 'package:flutter/material.dart';
import '../../models/persona_modelo.dart';
import '../paginas/detalles_contacto_page.dart';

class CustomListTile extends StatelessWidget
{
  final PersonaModelo person;

   CustomListTile({required this.person});

  @override 
  Widget build(BuildContext context)
  {
    return ListTile(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder:(context){
          return DetallesContactoPage(persona:person, 
          contenido:person.nombre!.contains("Leo") ? "Nuevo Contenido" : "" ,);
        }));
      },
      leading: Icon(person.iconizq),
      title: Text(person.nombre ?? ""),
      subtitle: Text(person.descripcion ?? ""),
      trailing: SizedBox(
        width: 100.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[Icon(person.iconder), const SizedBox(width: 8.0),const Icon(Icons.call)])
      ),
    );
  }
}