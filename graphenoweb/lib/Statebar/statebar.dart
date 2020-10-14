import 'package:flutter/material.dart';

class Statebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 100,
            color: Color.fromRGBO(0, 76, 153, 1),
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
