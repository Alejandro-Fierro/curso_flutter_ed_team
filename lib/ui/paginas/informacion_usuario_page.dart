import 'package:flutter/material.dart';

class InformacionUsuarioPage extends StatelessWidget {
  const InformacionUsuarioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Container(
          height: 150.0,
          width: 150.0,
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),color: Colors.blue,
            image: DecorationImage(
              image: NetworkImage("https://cf.ltkcdn.net/gatos/images/std/236641-800x515r1-etapas-desarrollo-gatitos.jpg" ),
              fit: BoxFit.cover
            )
            )
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Text("Nombre", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Text("NickName", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Text("Telefono", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Text("Descripcion", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
        ),
        ],
      ),
      
    );
  }
}