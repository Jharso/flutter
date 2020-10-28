import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  home: HomeScreen(),
));

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'app de prueba',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.blue,
              backgroundColor: Colors.white,
            ),
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,

        ),
      ),
    );
  }
}

