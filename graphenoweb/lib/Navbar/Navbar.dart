import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              child: Image.asset("assets/images/logo5.png"),
              width: 150,
            ),
            Row(
              children: <Widget>[
                // Text(
                //   "Soporte",
                //   style: TextStyle(color: Color.fromRGBO(24, 49, 59, 1)),
                // ),
                // SizedBox(
                //   width: 20,
                // ),
                // Text(
                //   "Descargas",
                //   style: TextStyle(color: Color.fromRGBO(24, 49, 59, 1)),
                // ),
                // SizedBox(
                //   width: 20,
                // ),
                // Text(
                //   "About us",
                //   style: TextStyle(color: Color.fromRGBO(24, 49, 59, 1)),
                // ),
                // SizedBox(
                //   width: 20,
                // ),
                // MaterialButton(
                //   color: Color.fromRGBO(221, 78, 8, 1),
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.all(Radius.circular(20.0))),
                //   onPressed: () {},
                //   child: Text(
                //     '¡Comienza ya!',
                //     style: TextStyle(color: Colors.white),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      child: Container(
          child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Image.asset("assets/images/logo5.png"),
                width: 150,
              ),
              // MaterialButton(
              //   color: Color.fromRGBO(221, 78, 8, 1),
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(20.0))),
              //   onPressed: () {},
              //   child: Text(
              //     '¡Comienza ya!',
              //     style: TextStyle(color: Colors.white),
              //   ),
              // ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Text(
                  //   "Soporte",
                  //   style: TextStyle(color: Color.fromRGBO(24, 49, 59, 1)),
                  // ),
                  // SizedBox(
                  //   width: 30,
                  // ),
                  // Text(
                  //   "Descargas",
                  //   style: TextStyle(color: Color.fromRGBO(24, 49, 59, 1)),
                  // ),
                  // SizedBox(
                  //   width: 30,
                  // ),
                  // Text(
                  //   "About us",
                  //   style: TextStyle(color: Color.fromRGBO(24, 49, 59, 1)),
                  // ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
