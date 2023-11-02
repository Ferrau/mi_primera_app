import 'package:flutter/material.dart';

//Widget:
//solo pueden tener 1 child
//Row
//Column
//'$conteo' --> para imrimir el valor de una variable y transformarlo en string (interpolacion de string)

class HomePage extends StatelessWidget {
  final _estiloTexto =
      new TextStyle(fontSize: 25); //Nuca va a cambiar este estilo

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //info: https://api.flutter.dev/flutter/material/Scaffold-class.html
        appBar: AppBar(
          title: Text('Titulo'),
          centerTitle: true,
          elevation: 0.8,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks', style: _estiloTexto),
            Text(
              '$_conteo',
              style: _estiloTexto,
            ),
          ],
        )),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ));
  }
}
