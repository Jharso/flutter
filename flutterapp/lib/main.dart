import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));


class Home extends StatelessWidget {
  @override //
  Widget build(BuildContext conte                                                                                                                                                                                       xt) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Holanda',
          style: TextStyle(
            color: Colors.greenAccent,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {},
          child: Text('Click me'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
