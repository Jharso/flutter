import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Desarrollo de \nSoftware",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Color.fromRGBO(145, 64, 55, 1)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                width: 400,
                child: Text(
                  "Nuestro objetivo es desarrollar software que esté al alcance de todos los emprendedores del país.",
                  style: TextStyle(
                      fontSize: 16.0, color: Color.fromRGBO(24, 49, 59, 1)),
                ),
              ),
            ),
            // MaterialButton(
            //   color: Colors.white,
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.all(Radius.circular(20.0))),
            //   onPressed: () {},
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(
            //         vertical: 20.0, horizontal: 40.0),
            //     child: Text(
            //       "Our Packages",
            //       style: TextStyle(color: Color.fromRGBO(145, 64, 55, 1)),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Container(
          child: Image.asset(
            "assets/images/sample3.png",
            width: width,
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
