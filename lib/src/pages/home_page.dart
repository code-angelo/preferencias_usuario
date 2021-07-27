import 'package:flutter/material.dart';
import 'package:preferenciasuarioapp/src/share_prefs/preferencias_usuarios.dart';
import 'package:preferenciasuarioapp/src/widgets/menu_widget.dart';




class HomePage extends StatelessWidget {

  static final routeName = 'home';
  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {

    prefs.ultimaPagina = HomePage.routeName;


    return Scaffold(
      appBar: AppBar(
        title: Text('preferencias de usuario'),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color secundario: ${prefs.colorSecundario}'),
          Divider(),
          Text('Genero: ${prefs.genero}'),
          Divider(),
          Text('Nombre Usuario: ${prefs.nombreUsuario}'),
          Divider(),
        ],
      ),
    );
  }

}