import 'package:flutter/material.dart';
import 'package:flutter_logindemo/rant_car.dart';
import 'package:flutter_logindemo/view/pages/homePage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui';

import 'MainPage.dart';


class Dbord extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'Transaction',
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  servicee(context){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => service()));
  }
  map(context){
    _launchURL() ;
  print("assad");
  }
  BillBtn(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainPage()));
  }
  rant(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainApp1()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2b2c4e),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -100.0,
              left: -10.0,
              child: Transform.rotate(
                angle: 15.0,
                child: Container(
                  height: 350.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: <Color>[
                          Color(0xFFff94a9),
                          Color(0xFFff94a9),
                          Color(0xFFff40c4),
                        ]),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 18.0, right: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 50.0),
                  Text(
                    'Zubair Automotive Group',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Of the many players that currently make up the domestic automotive sector, '
                        'one name has consistently stood out for its abiding commitment to offering quality'
                        ' products and after-sales services to the local market.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 70.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Stack(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: ()=>servicee(context),
                                    child: ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 10.0,
                                          sigmaY: 10.0,
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(30.0),
                                              color: Color(0x89545782)),
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.only(
                                              left: 40.0, right: 40.0),
                                          child: Column(
                                            children: <Widget>[
                                              SizedBox(
                                                height: 40.0,
                                              ),
                                              CircleAvatar(
                                                radius: 30.0,
                                                backgroundColor: Color(0xFFff47e1),
                                                child: Icon(
                                                  FontAwesomeIcons.shoppingBag,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40.0,
                                              ),
                                              Text(
                                                'Shopping',
                                                style: TextStyle(
                                                  color: Color(0xFFff47e1),
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 20.0),
                            Expanded(
                              child: Stack(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: ()=>BillBtn(),
                                    child: ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 10.0,
                                          sigmaY: 10.0,
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(30.0),
                                              color: Color(0x89545782)),
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.only(
                                              left: 40.0, right: 40.0),
                                          child: Column(
                                            children: <Widget>[
                                              SizedBox(
                                                height: 40.0,
                                              ),
                                              CircleAvatar(
                                                radius: 30.0,
                                                backgroundColor: Color(0xFFff9550),
                                                child: Icon(
                                                  FontAwesomeIcons
                                                      .car,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40.0,
                                              ),
                                              Text(
                                                'Offers',
                                                style: TextStyle(
                                                  color: Color(0xFFff9550),
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Stack(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: ()=>map(context),
                                    child:ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 10.0,
                                          sigmaY: 10.0,
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(30.0),
                                              color: Color(0x89545782)),
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.only(
                                              left: 40.0, right: 40.0),
                                          child: Column(
                                            children: <Widget>[
                                              SizedBox(
                                                height: 40.0,
                                              ),
                                              CircleAvatar(
                                                radius: 30.0,
                                                backgroundColor: Color(0xFF0fdf5f),
                                                child: Icon(
                                                  FontAwesomeIcons.map,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40.0,
                                              ),
                                              Text(
                                                'Map',
                                                style: TextStyle(
                                                  color: Color(0xFF0fdf5f),
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),


                                  ),

                                ],
                              ),
                            ),
                            SizedBox(width: 20.0),
                            Expanded(
                              child: Stack(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: ()=>rant(),
                                    child:ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 10.0,
                                          sigmaY: 10.0,
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(30.0),
                                              color: Color(0x89545782)),
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.only(
                                              left: 40.0, right: 40.0),
                                          child: Column(
                                            children: <Widget>[
                                              SizedBox(
                                                height: 40.0,
                                              ),
                                              CircleAvatar(
                                                radius: 30.0,
                                                backgroundColor: Color(0xFF0fdf5f),
                                                child: Icon(

                                                  FontAwesomeIcons.taxi,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40.0,
                                              ),
                                              Text(
                                                'Rant Car',
                                                style: TextStyle(
                                                  color: Color(0xFF0fdf5f),
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),


                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28.0,
        backgroundColor: Color(0xFF373956),
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.date_range, color: Color(0xFFFF56BF)),
              title: new Text('')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.equalizer, color: Color(0xFF6f739b)),
              title: new Text('')),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person, color: Color(0xFF6f739b)),
            title: new Text(''),
          ),
        ],
      ),

    );



  }
}
_launchURL() async {
  const url = 'https://www.google.com/maps/place/%D8%A7%D9%84%D8%B2%D8%A8%D9%8A%D8%B1+%D9%84%D9%84%D8%B3%D9%8A%D8%A7%D8%B1%D8%A7%D8%AA%E2%80%AD/@23.5901281,58.3655196,15z/data=!4m5!3m4!1s0x0:0xc6a877331fbc6fa0!8m2!3d23.5901281!4d58.3655196';
  if (await canLaunch(url)) {
    await launch(url);
  }
}



class ca {
  static final white = Colors.white;
  static final bgColor = Color(0xFF2b2c4e);
  static final bottomBg = Color(0xFF373956);
  static final containerBg = Color(0x89545782);
  static final navItem = Color(0xFF6f739b);
  static final navItemSelected = Color(0xFFFF56BF);
  static final gradient1 = Color(0xFFff94a9);
  static final gradient2 = Color(0xFFff94a9);
  static final gradient3 = Color(0xFFff40c4);
  static final item1 = Color(0xFF1fa2f5);
  static final item2 = Color(0xFF8359ff);
  static final item3 = Color(0xFFff47e1);
  static final item4 = Color(0xFFff9550);
  static final item5 = Color(0xFF4975ff);
  static final item6 = Color(0xFF0fdf5f);
}
