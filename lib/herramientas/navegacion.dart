import 'package:flutter/material.dart';

import 'package:hismanic/pages/home.dart';
import 'package:hismanic/pages/login.dart';


final rutas = <String, WidgetBuilder>
{
  "/home": (BuildContext context) => Home(),
  "/login": (BuildContext context) => Login(),
};

class Ruta
{
  static void goHome(BuildContext context)
  {
    Navigator.pushNamed(context, "/home");
  }

  static void goLogin(BuildContext context)
  {
    Navigator.pushNamed(context, "/login");
  }
}
