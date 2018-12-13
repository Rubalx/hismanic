import 'package:flutter/material.dart';

import 'pages/inicio.dart';
import 'herramientas/navegacion.dart';


class Hismanic extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
        debugShowCheckedModeBanner: false,
        title: 'Hismanic',
        home: Inicio(),
        routes: rutas);
  }
}

void main() => runApp(new Hismanic());
