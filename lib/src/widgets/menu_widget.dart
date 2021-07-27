import 'package:flutter/material.dart';
import 'package:preferenciasuarioapp/src/pages/home_page.dart';
import 'package:preferenciasuarioapp/src/pages/settings_page.dart';


class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Drawer(
      child: ListView(
        
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader( 
            child: Text('mi menu'),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu-img.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
          ListTile(
            leading: Icon(Icons.pages, color: Colors.blue,),
            title: Text('Home'),
            onTap: () =>  Navigator.pushReplacementNamed(context, HomePage.routeName),
            trailing: Icon(Icons.arrow_right, color: Colors.greenAccent,),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.party_mode, color: Colors.blue,),
            title: Text('Pages'),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.satellite, color: Colors.blue,),
            title: Text('Satellite'),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue,),
            trailing: Icon(Icons.arrow_right, color: Colors.greenAccent,),
            title: Text('Setting'),
            onTap: (){
              
              // Navigator.pop(context);
              // Navigator.pushNamed(context, SettingsPage.routeName);
              Navigator.pushReplacementNamed(context, SettingsPage.routeName); //usado para logins
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}