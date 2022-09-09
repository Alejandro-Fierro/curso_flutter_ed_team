import 'package:curso_flutter_ed_team/Controladores/lista_contactos_controler.dart';
import 'package:flutter/material.dart';

import '../../models/persona_modelo.dart';
import '../widgets/custom_buttons.dart';
import '../widgets/custom_lisstile.dart';
import 'home_page.dart';




//List<PersonaModelo> persons = [persona1, persona2, persona3];


class ListaContactosPage extends StatelessWidget {
  //const ListaContactosPage({Key? key}) : super(key: key);

  ListaContactosControler controller = ListaContactosControler.instancia;


  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller.contactos ,
      builder: ((context, value, child) {
        return  Container(
    child: Column(
            children: <Widget>[
              CustomButton(),
              
              Expanded(
               child: ListView.builder(
                itemCount: controller.contactos.value.length,
                itemBuilder: (context , picker)
                {
                   return Dismissible(
                  background: Container(color:Colors.red),
                  onDismissed: (direction)=>controller.contactos.value.removeAt(picker), 
                  key: Key(picker.toString()), 
                  child: CustomListTile(person: controller.contactos.value[picker]));
                },
               )
               )
               ]
               )
               );
      })
    );
                
                 
                   
                  
  
  }
}
