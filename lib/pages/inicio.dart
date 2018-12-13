import 'dart:async';
import 'package:flutter/material.dart';

import 'package:hismanic/herramientas/navegacion.dart';

class Inicio extends StatefulWidget
{
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio>
{
  @override
  void initState()
  {
    super.initState();
    Timer(Duration(seconds: 4), () => Ruta.goLogin(context) );
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        body: Stack
          (
            fit: StackFit.expand,
            children: <Widget>
              [
                Container( decoration: BoxDecoration(color: Colors.orange), ),
                Column
                  (
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>
                      [
                        Expanded
                          (
                            flex: 2,
                            child: Container
                              (
                                child: Column
                                  (
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: <Widget>
                                       [
                                         SizedBox
                                          (
                                            height: 400.0,
                                            child: Image.asset('images/pulpito.png'),
                                          ),

                                         Padding(padding: EdgeInsets.only(top: 0.0),),

                                         Text
                                           (
                                             'Hismanic',
                                             style: TextStyle
                                               (
                                                 color: Colors.white,
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 64.0
                                               ),
                                           )
                                        ],
                                   ),
                              ),
                           ),

                        Expanded
                          (
                            flex: 1,
                            child: Column
                              (
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>
                                  [
                                    CircularProgressIndicator(),

                                    Padding( padding: EdgeInsets.only(top: 20.0), ),

                                    Text
                                      (
                                        'Disfruta y Comparte',
                                        softWrap: true,
                                        textAlign: TextAlign.center,
                                        style: TextStyle
                                          (
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                            color: Colors.white
                                          ),
                                      )
                                  ],
                               ),
                           )
                     ],
          )
        ],
      ),
    );
  }
}
