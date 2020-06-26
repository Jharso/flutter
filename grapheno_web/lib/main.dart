import 'package:flutter/material.dart';
import 'package:grapheno/LandingPage/LandingPage.dart';
import 'package:grapheno/Navbar/Navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PRUEBAS',
      theme: ThemeData(primarySwatch: Colors.orange, fontFamily: "Montserrat"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(217, 246, 249, 0.95),
                Color.fromRGBO(0, 0, 0, 0.95),
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: LandingPage(),
              ),
              Image.network(
                  "https://images.wallpaperscraft.com/image/river_house_art_131397_1920x1080.jpg"),
              Image.network("https://wallpaperset.com/w/full/f/4/d/123790.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}
