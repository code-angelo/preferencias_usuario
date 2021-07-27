import 'package:shared_preferences/shared_preferences.dart';



class PreferenciasUsuario{


  static final PreferenciasUsuario _instancia = new PreferenciasUsuario._internal();

  factory PreferenciasUsuario(){

    return _instancia;
  }


  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    
    _prefs = await SharedPreferences.getInstance();
    
  }


  //ninguna de estas propiedades se usa
  bool     _colorSecundario;
  int      _genero;
  String   _nombre;

  //SET Y GET del genero
  get genero{
    return _prefs.getInt('genero') ?? 1;
  }

  set genero (int value){
    _prefs.setInt('genero', value);
  }
  //SET Y GET del color secundario
  get colorSecundario{
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario (bool value){
    _prefs.setBool('colorSecundario', value);
  }
  //SET Y GET del nombreUsuario
  get nombreUsuario{
    return _prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario (String value){
    _prefs.setString('nombreUsuario', value);
  }
  //SET Y GET del UltimaPagina
  get ultimaPagina{
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina (String value){
    _prefs.setString('ultimaPagina', value);
  }


}