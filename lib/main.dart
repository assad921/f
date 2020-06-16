
import 'package:flutter/material.dart';
import 'package:flutter_logindemo/pages/login/login_page.dart';
import 'package:flutter_logindemo/pages/login/register.dart';

import 'Dbord.dart';


void main() => runApp(MyApp());

final routes = {
  '/login': (BuildContext context) => new LoginPage(),
//  '/home': (BuildContext context) => new AppointmentScreen(),
  '/home': (BuildContext context) => new Dbord(),


//  '/home': (BuildContext context) => new HomePage(),
  '/register': (BuildContext context) => new RegisterPage(),
  '/': (BuildContext context) => new LoginPage(),
};

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'Sqflite App',
      theme: new ThemeData(primarySwatch: Colors.teal),
      routes: routes,
    );
  }
}
