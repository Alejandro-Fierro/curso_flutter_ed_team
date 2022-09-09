import 'dart:js';

import 'package:curso_flutter_ed_team/ui/paginas/informacion_usuario_page.dart';
import 'package:curso_flutter_ed_team/ui/paginas/lista_contactos_page.dart';
import 'package:flutter/material.dart';
import '../../models/persona_modelo.dart';
import '../widgets/custom_buttons.dart';
import '../widgets/custom_lisstile.dart';
import 'package:curso_flutter_ed_team/ui/paginas/detalles_contacto_page.dart';
import 'package:curso_flutter_ed_team/ui/paginas/informacion_usuario_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';



List<Widget> pages = [
  ListaContactosPage(),
  InformacionUsuarioPage(),

];
              
               

            

  


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  //const HomePage({Key? key}) : super(key: key);
 
   String titulo = "Material App";
  late int picker;

  @override
  void initState() {
    super.initState();
    picker=0;
  }

  GlobalKey<ScaffoldState> homeKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeKey,
      drawer: Drawer(
        child: Column(
          
          children: <Widget>[
            
            DrawerHeader(child: Container(color: Theme.of(context).primaryColor,
            padding: EdgeInsets.zero),),
            ListTile(
              leading: Icon(MdiIcons.homeCity),
              title: const Text("Inicio"),
              onTap: (){
                setState((){
                  Navigator.pop(context);
                  picker=0;});
              },
            ),
            ListTile( 
              leading: Icon(MdiIcons.airplane),
            title:Text("Perfil de Usuario"),
            onTap: (){
              setState((){
                Navigator.pop(context);
                  picker=1;});
            },),
          ]
        )
      ),
          floatingActionButton: Builder(
            builder: (BuildContext context){
              return FloatingActionButton(
                onPressed: (){
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text("Soy un snackbar")));
                  print("Presionado");
                },
                child: const Icon(Icons.add),
              );
            },
            
          ),
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.image),
                onPressed: () {},
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.message)),
            ],
            title: Text(titulo),
          ),
          body:pages[picker]); 
          
  }
}

