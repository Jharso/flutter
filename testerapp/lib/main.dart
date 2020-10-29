import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

void main() => runApp(MaterialApp(
      home: HomeScreen(),
    ));

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class WorldTime {
  String url;
  List lista;
  int tamano;

  WorldTime({this.url});

  Future<void> getTime() async {
    try {
      Response response = await get(url);
      lista = jsonDecode(response.body);
      tamano = lista.length;
    } catch (e) {
      print('caught error: $e');
    }
  }

  int getTamano() {
    return tamano;
  }

  List getData() {
    return lista;
  }

  String getIndividual(int a) {
    return lista[a];
  }
}

class _HomeScreenState extends State<HomeScreen> {
  WorldTime instance = WorldTime(url: 'http://worldtimeapi.org/api/timezone/');

  void loadingData() async {
    await instance.getTime();
  }

  @override
  Widget build(BuildContext context) {
    loadingData();
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
      body: ListView.builder(
        itemCount: instance.getTamano(),
        itemBuilder: (context, index) {
          return Center(
            child: Card(
              child: Text(
                instance.getIndividual(index),
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
            ),
          );
        },
      ),
    ));
  }
}
