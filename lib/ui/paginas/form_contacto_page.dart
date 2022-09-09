// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:curso_flutter_ed_team/models/persona_modelo.dart';
import 'package:flutter/material.dart';
import 'package:curso_flutter_ed_team/Controladores/lista_contactos_controler.dart';
import 'package:flutter/services.dart';


GlobalKey<FormState> formKey = GlobalKey<FormState>();
GlobalKey<ScaffoldState> formpagekey = GlobalKey<ScaffoldState>();

class FormContactoPage extends StatefulWidget {
  @override 
  _FormContactoPageState createState() => _FormContactoPageState();
  
}

class _FormContactoPageState extends State<FormContactoPage>{

  late TextEditingController _nombreController;
  late TextEditingController _nickController;
  late TextEditingController _telController;

  ListaContactosControler _controller = ListaContactosControler.instancia;
  final PersonaModelo _persona = PersonaModelo();

  @override 
  void initState() {
    super.initState();
    _nombreController = TextEditingController(text: "");
    _nickController = TextEditingController(text: "");
    _telController = TextEditingController(text: "");
  }

  bool validateAll(){
    if(formKey.currentState!.validate()){
      return true;
    }else{
      formpagekey.currentState!.showSnackBar( SnackBar(content: Text("inserte todos los datos")));
      return false;
    }
  }

  String? validate(String value, String key)=>
    value.isEmpty?"Inserte su $key":null;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:formpagekey,
      appBar : AppBar(
        //automaticallyImplyLeading: false, //quita el boton de regreso del appbar
        title: Text("Nuevo Contacto"),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height:8.0),
              TextFormField(
                validator: (value)=>validate(value!,"Nombre"),
                decoration: InputDecoration(
                  labelText: "Nombre",
                  border:OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).primaryColor)),
                  hintText: "Nombre",
                  icon: Icon(Icons.person),
                ),
                onChanged: ((value) => _persona.nombre=value),
                controller: _nombreController,
              ),
              SizedBox(height: 8.0),
              TextFormField(
                validator: (value)=>validate(value!,"Nick"),
                decoration: InputDecoration(
                  labelText: "Nickname",
                  border:OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).primaryColor)),
                  hintText: "Nick-Name",
                  icon: Icon(Icons.people_alt),
                ),
                onChanged: ((value) => _persona.nickname=value),
                controller: _nickController,
              ),
              SizedBox(height: 8.0),
              TextFormField(
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: (value)=>validate(value!,"Telefono"),
                decoration: InputDecoration(
                  labelText: "Telefono",
                  border:OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).primaryColor)),
                  hintText: "Tel",
                  icon: Icon(Icons.phone),
                ),
                onChanged: ((value) => _persona.descripcion=value),
                controller: _telController,
              ),
              SizedBox(height: 32.0),

              RaisedButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                 if(validateAll()){
                   _controller.contactos.value=List.from(_controller.contactos.value)..add(_persona);
                   Navigator.pop(context);
                 }
                },
                child: Text("Agregar Contacto",style: TextStyle(color:Colors.white)))
            ],
          ),

        ) ,)
    );
  }
}