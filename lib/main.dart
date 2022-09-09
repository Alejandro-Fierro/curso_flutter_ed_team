
import 'package:curso_flutter_ed_team/ui/paginas/form_contacto_page.dart';
import 'package:curso_flutter_ed_team/ui/paginas/home_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  //MyApp({Key? key}) : super(key: key);


  Widget botones()
  {
    return OutlinedButton(onPressed: (){}, child: Text("Boton 1"));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
        ); 
  
  }
}



//listview da el scroll
//Column, no recibe child, recibe children, varios hijos
//Column(children: <Widget>[
       //       for (int i = 0; i < persons.length; i++)
       //         customListTile(persons[i])
//stack, sobreponor uno sobre otro
//grid