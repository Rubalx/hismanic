import 'package:flutter/material.dart';
import 'package:hismanic/pages/home.dart';

class Fondo extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) {
    return Container
    (
      decoration: BoxDecoration
      (
        color: Colors.white,
        image: DecorationImage
        (
          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
          image: AssetImage('images/dibujar.jpg'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class Email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Expanded(
                child: new Padding(padding: const EdgeInsets.only(left: 40.0),
                  child: new Text(
                    "EMAIL",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
    );
  }
}

class Registro extends StatefulWidget 
{
  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> with SingleTickerProviderStateMixin 
{
  AnimationController controller;
  Animation<double> animation;

  GlobalKey<FormState> _key = GlobalKey();

  RegExp emailRegExp = RegExp(r'^\w+[\w-\.]*\@\w+((-\w+)|(\w*))\.[a-z]{2,3}$');
  RegExp contRegExp = RegExp(r'^([1-zA-Z0-1@.\s]{1,255})$');
 
  String _correo;
  String _contrasena;
  
  bool _ojo = true;
  bool _logueado = false;

  initState() 
  {
    super.initState();
    controller = AnimationController( duration: const Duration(milliseconds: 1000),vsync: this,);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    controller.forward();
  }

  dispose() {
    // Es importante SIEMPRE realizar el dispose del controller.
    controller.dispose();
    super.dispose();
  }

  Widget Email()
  {
    return Container
    (
      child: Center(
      child: TextFormField
      (
      maxLength: 40,
      validator: (text) 
      {
        if (text.length == 0) 
        {
          return "Este campo correo es requerido";
        } 
        else if (!emailRegExp.hasMatch(text)) 
        {
          return "El formato para correo no es correcto";
        }
        return null;
      },                
      
      keyboardType: TextInputType.emailAddress,                 
      onSaved: (text) => _correo = text,
      style: TextStyle(color: Colors.white, fontSize: 24.0),
      textAlign: TextAlign.center,
      decoration: InputDecoration
      (
        fillColor: Colors.greenAccent,
        contentPadding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
        border: OutlineInputBorder
        (
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: Colors.white, width: 4.0),
        ),
        hintStyle: TextStyle(color: Colors.white, fontSize: 24.0),
        hintText: 'Ingrese su Correo',
        labelStyle: TextStyle(color: Colors.white, fontSize: 24.0),
        labelText: 'Correo Electrónico', 
        
      ),
    )
      )
    );
  }

  Widget loginForm() 
  {
    return Container
        (
          width: 300.0, //size.width * .6,
          child: Form
          (
            key: _key,
            child: Center
            (
              child: Column
            (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>
              [
                Email(),
  
              ],
            ),
            )
          ),
        );
      
  }


@override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      body: _logueado ? Home() : Stack(children:<Widget>[Fondo(), loginForm(),]),
    );
  }

}

/*
TextFormField
                (
                  maxLength: 20,
                  validator: (text) 
                  {
                    if (text.length == 0) 
                    {
                      return "Este campo contraseña es requerido";
                    } 
                    else if (text.length <= 5) 
                    {
                      return "Su contraseña debe ser al menos de 5 caracteres";
                    } 
                    else if (!contRegExp.hasMatch(text)) 
                    {
                      return "El formato para contraseña no es correcto";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  obscureText: _ojo,
                  onSaved: (text) => _contrasena = text,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration
                  (
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    suffixIcon: IconButton
                    (
                      onPressed: () {
            if (_ojo) {
              setState(() {
                _ojo = false;
              });
            } else {
              setState(() {
                _ojo = true;
              });
            }
          },
                      icon: Icon(Icons.remove_red_eye, color: Colors.grey,),
                    ),
                    hintText: 'Ingrese su Contraseña',
                    labelText: 'Contraseña',
                    counterText: '',
                  ),
                  
                ),
                
                IconButton(
                  onPressed: () {
                    if (_key.currentState.validate()) 
                    {
                      _key.currentState.save();
                      //Aqui se llamaria a su API para hacer el login
                      setState(() 
                      {
                        _logueado = true;
                      });
                    }
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    size: 42.0,
                    color: Colors.red[800],
                  ),
                )
    */          