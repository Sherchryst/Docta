import './home_body.dart';
import 'package:flutter/material.dart';

String selectedCategorie = "Adults";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Home',
            style: TextStyle(
              color: Color(0xff707171),
              fontSize: 23,
            ),
          ),
          backgroundColor: Color(0xffeef0f1),
          elevation: 0.0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(
            color: Colors.black87,
          ),
        ),
        drawer: Drawer(elevation: 10.0,
          child: Container() // Menu top left to be populated
            ),
        body: HomeBody() //scrolling menu
        );
  }
}
