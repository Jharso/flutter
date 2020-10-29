import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
              ),
            ),
            height: 40,
            //color: Color.fromRGBO(0, 76, 153, 1),
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 30.0),
                child: Row(
                  children: <Widget>[
                    Image.asset('assets/images/wsplogo.png'),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      child: Text(
                        '+569 5897 1409',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0,),
                      ),
                      onTap: () => launch('https://wa.me/message/672AASTH2DKWB1'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
