import 'package:flutter/material.dart';
import 'package:hismanic/herramientas/navegacion.dart';
class Home extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar
      (
        elevation: 1.0,
        leading: new Icon(Icons.camera_alt),

        centerTitle: true,
        title: SizedBox(height: 50.0, child: Image.asset('images/logoo.png'),),

        actions: <Widget>[Padding(padding: EdgeInsets.only(right: 12.0), child: new Icon(Icons.send),)],
      ),

      body: Container
      (
          color: Colors.white,
          alignment: Alignment.center,
          child: Column(children:
          [
            Container
              (
              padding: EdgeInsets.all(10.0),
              child: Row(children:
              [
                FotoPerfil(),
                Perfil(),
              ],
              ),
            ),
            Image.asset('images/perro.jpg'),
            Like(),
          ]
          )
      ),

        bottomNavigationBar: new Container
          (
            color: Colors.white,
            height: 50.0,
            alignment: Alignment.center,
            child: new BottomAppBar
              (
                child: new Row
                  (
                    // alignment: MainAxisAlignment.spaceAround,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>
                       [
                         new IconButton
                           (
                             icon: Icon( Icons.home,),
                             onPressed: () => Ruta.goLogin(context),
                           ),
                         new IconButton
                           (
                             icon: Icon( Icons.search,),
                             onPressed: null,
                           ),
                         new IconButton
                           (
                             icon: Icon(Icons.add_box,),
                             onPressed: () => Ruta.goLogin(context),
                           ),
                         new IconButton
                           (
                             icon: Icon(Icons.account_box,),
                             onPressed: null,
                           ),
                       ],
                  ),
              ),
          )

      );
  }
}

class Like extends StatefulWidget
{
  @override
  LikeState createState() => new LikeState();
}

class LikeState extends State<Like>
{
  bool liked = false;

  _pressed()
  {
    setState( ()
    {
      liked = !liked;
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Container
      (
      child: ListTile
        (
          leading: IconButton
            (
            icon: Icon(liked ? Icons.favorite : Icons.favorite_border,
                color: liked ? Colors.red : Colors.blue),
            onPressed: () => _pressed(),
          )
      ),
    );
  }
}

class FotoPerfil extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Container
      (
      width: 45.0,
      height: 45.0,
      decoration: BoxDecoration
        (
        shape: BoxShape.circle,
        image: DecorationImage(fit: BoxFit.fill, image: AssetImage('images/perfil.jpg')),
      ),
    );
  }
}

class Perfil extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Container
      (
      padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Text
      (
        'Rubalx', 
        style: TextStyle
        (
          fontSize:17.0, 
          fontFamily: 
          'Roboto', 
          fontWeight: FontWeight.w600,
        )
      ),
    );
  }
}