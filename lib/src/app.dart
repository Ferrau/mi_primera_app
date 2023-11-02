//Widget -> son clases
//StatelessWidget = sin estado

import 'package:flutter/material.dart';
import 'package:mi_primera_app/src/pages/contador_page.dart';
//import 'package:mi_primera_app/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  //Metodo "build" se encarga de dibujar el widget

  @override //Sobreescribimos el metodo que viene dentro de Stateless..
  Widget build(BuildContext context) {
    //BuildContext: Contiene la informacion de su arbol de widget (sabe quien es su padre)

    //Para conocer el constructor: https://api.flutter.dev/flutter/material/MaterialApp-class.html#constructors
    return MaterialApp(
        debugShowCheckedModeBanner: false, //elimina la barra de arriba
        home: Center(
          //child: HomePage(),
          child: ContadorPage(),
        ));
  }
}
