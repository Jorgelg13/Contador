import 'package:flutter/material.dart';

class Contador extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ContadorState();
}

class _ContadorState extends State <Contador>{

  final _estiloTexto  = new TextStyle(fontSize: 30);
  int _contador = 10;

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
            Text('Numero de clicks..',style: _estiloTexto),
            Text('$_contador',style: _estiloTexto),
          ],
        )
      ),
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
          FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _resetear,
        ),
        Expanded(child: SizedBox()) ,
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _restar,
        ),
        SizedBox(width: 10.0,),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _agregar,
        )
      ]);   
  }

  void _agregar(){
    setState(() {
      _contador++; 
    });
  }

  void _restar(){
    setState(() {
      _contador--; 
    });
  }

  void _resetear(){
    setState(() {
      _contador = 0; 
    });
  }
}