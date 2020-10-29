import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graphenoweb/classes/landing_element.dart';

class CardTemplate extends StatelessWidget {
  final Lndimg aux;

  CardTemplate({this.aux});

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: <Widget>[
        //     Padding(
        //       padding:
        //           const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
        //       child: Text(
        //         aux.tittle,
        //         style: TextStyle(
        //             fontWeight: FontWeight.bold,
        //             fontSize: 35.0,
        //             color: Colors.grey[200]),
        //       ),
        //     ),
        //     Padding(
        //       padding:
        //           const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        //       child: Container(
        //        // color: Colors.orange.withOpacity(0.90),
        //         width: 250,
        //         child: Text(
        //           aux.text,
        //           style: TextStyle(fontSize: 14.0, color: Colors.black),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ),
      Container(
        child: Image.asset(
          aux.image,
          height: 400.0,
          width: width,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Column(children: <Widget>[
          Container(
            height: 450,
            width: 1030,
            child: Card(
                color: Colors.blue[900].withOpacity(0.70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                      pageChildren(710.0),
                )),
          ),
          SizedBox(
            height: 25.0,
          )
        ]);
      } else {
        return Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                color: Colors.blue[900].withOpacity(0.70),
                child: Column(
                  children: pageChildren(constraints.biggest.width),
                ),
              ),
              SizedBox(height: 25.0),
            ]);
      }
    });
  }
}
