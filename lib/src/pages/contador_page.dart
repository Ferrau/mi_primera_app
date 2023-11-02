//StatefullWidget --> con estado
//SizeBox() --> Separacion de espacio
//setState() --> Redibuja - actualiza el estado
//State ---> Mecesota un metodo para crear un estado
//build --> nos sirve dibujar el widget
//_conteo --> metodo privado

import 'package:flutter/material.dart';

//_ContadorPageState -> el _ hace que la clase sea privada

class ContadorPage extends StatefulWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  createState() =>
      _ContadorPageState(); //la funcion de flecha es lo mismo que hacer un retur

}

//Estado que va a manejar ese StatefullWidget
class _ContadorPageState extends State<ContadorPage> {
  //Esta calse solo se puede utilizar dentro de esta misma clase

  final _estiloTexto =
      new TextStyle(fontSize: 25); //Nuca va a cambiar este estilo

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //info: https://api.flutter.dev/flutter/material/Scaffold-class.html
        appBar: AppBar(
          title: Text('Statefull'),
          centerTitle: true,
          elevation: 0.8,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //para que este centrado
          children: <Widget>[
            Text('Número de clicks', style: _estiloTexto),
            Text(
              '$_conteo',
              style: _estiloTexto,
            ),
          ],
        )),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        //Lista de botones

        SizedBox(width: 30.0),

        //Boton Restar
        FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed:
                //me obliga que tiene esa propiedad: required this.onPressed,
                //Esto es una funcion anonima
                //print("Hola Ester");
                _restar),

        SizedBox(width: 5.0), //Separacion de espacio}

        //Boton agregar
        FloatingActionButton(
            child: Icon(Icons.alarm_add),
            onPressed:
                _agregar //No le pongo parentesis porque necesito ejecutarlo cuando le damos click al boton, no cuando se crea el widget

            ),

        Expanded(child: SizedBox(width: 5.0)),

        //Boton restart
        FloatingActionButton(
            child: Icon(Icons.exposure_zero),
            onPressed:
                //me obliga que tiene esa propiedad: required this.onPressed,
                _restart),
      ],
    );
  }

  void _agregar() {
    //Redibuja - actualiza el estado en la pantalla
    setState(() {
      _conteo++;
    });
  }

  void _restar() {
    setState(() {
      _conteo--;
    });
  }

  void _restart() {
    setState(() {
      _conteo = 0;
    });
  }
}
