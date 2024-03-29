import 'package:flutter/material.dart';
import 'package:preferenciasuarioapp/src/pages/home_page.dart';
import 'package:preferenciasuarioapp/src/pages/settings_page.dart';
import 'package:preferenciasuarioapp/src/share_prefs/preferencias_usuarios.dart';
 
void main() async {
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();

  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {

  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias de usuario',
      initialRoute: prefs.ultimaPagina,
      routes: {
        HomePage.routeName      : (BuildContext context) => HomePage(),
        SettingsPage.routeName  : (BuildContext context) => SettingsPage(),


      },
    );
  }
}