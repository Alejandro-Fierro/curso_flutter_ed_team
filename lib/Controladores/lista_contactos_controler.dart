import 'package:flutter/material.dart';

import '../models/persona_modelo.dart';

class ListaContactosControler{
 static List<PersonaModelo> persons = [persona1, persona2, persona3];
 
 
 static final ListaContactosControler instancia = 
  ListaContactosControler._();

  ListaContactosControler._();

  ValueNotifier<List<PersonaModelo>> contactos = ValueNotifier<List<PersonaModelo>>(persons);
}