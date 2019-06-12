import 'package:flutter/material.dart';
import 'package:primera_prueba/src/pages/contador.dart';

class MyApp extends StatelessWidget {

  @override
  build( context ){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Contador(),
    );
  }
}
