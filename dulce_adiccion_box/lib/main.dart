import 'package:flutter/material.dart';

void main() {
  runApp(new BoxApp());
}

class BoxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Dulce Adicción Box',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'DancingScript',
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: DaFolder('https://www.instagram.com/p/B-f905NBl8P'),
        ),
      ),
    );
  }
}

class DaFolder extends StatelessWidget {
  final String _url;

  DaFolder(this._url);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(_url + '/media/?size=l'),
    );
  }
}
