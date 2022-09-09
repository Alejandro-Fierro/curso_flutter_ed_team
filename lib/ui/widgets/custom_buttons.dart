import 'package:curso_flutter_ed_team/Controladores/theme_contoler.dart';
import 'package:flutter/material.dart';
import '../../Controladores/main_controler.dart';
import '../paginas/form_contacto_page.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {


  ValueNotifier<String> titulo = ValueNotifier<String>("Agregar Contacto");
  ThemeControler themeControler = ThemeControler();

  @override
  Widget build(BuildContext context) {
    return InkWell(
    onTap:(){
      presionadoboton();
      themeControler.changeTheme(true);

      Navigator.of(context).push(MaterialPageRoute(
        builder: (context){
          return FormContactoPage();
        }
      ));
      
      
    },
   
    child: ValueListenableBuilder(
      valueListenable: titulo,
      builder: (context,value,child){
        return Container(
          height: 60.0,
         width: double.infinity,
          decoration: BoxDecoration
          (
            border:Border.all(color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(8.0),
          ),
                
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(8.0),
        child:  Center
          (
           child: Text
            (
              titulo.value,
              style:  GoogleFonts.biryani(color: Theme.of(context).primaryColor,)
            ),
          )
      );
      }
    )
  );
  }
}