import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final estiloTexto  = new TextStyle(fontSize: 30);
  final int contador = 10;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo de flutter'),
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: <Widget>[
            Text('Numero de clicks..',style: estiloTexto),
            Text('$contador',style: estiloTexto),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.control_point),
        onPressed: (){
          print('Hola Jorge');
        },
      ),
    );
  }
}