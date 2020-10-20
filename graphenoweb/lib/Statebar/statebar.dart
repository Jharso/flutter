import 'package:flutter/material.dart';

class Statebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [Colors.black, Colors.blue[800]],
            ),),
            height: 40,
            //color: Color.fromRGBO(0, 76, 153, 1),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
