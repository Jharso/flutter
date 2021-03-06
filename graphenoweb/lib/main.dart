import 'package:flutter/material.dart';
import 'package:graphenoweb/LandingPage/LandingPage.dart';
import 'package:graphenoweb/Navbar/Navbar.dart';
import 'package:graphenoweb/Statebar/statebar.dart';

void main() => runApp(MaterialApp(
      title: 'GraphenoSoftware',
      theme: ThemeData(primarySwatch: Colors.orange, fontFamily: "Montserrat"),
      home: MyHomePage(),
    ));

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(),
              Statebar(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: LandingPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
