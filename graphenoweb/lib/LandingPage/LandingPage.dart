import 'package:flutter/material.dart';
import 'package:graphenoweb/classes/landing_element.dart';
import 'package:graphenoweb/templates/card_template.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<Lndimg> landimage = [
    Lndimg(
        tittle: '',
        text:
            '',
        image: 'assets/images/image2.jpeg'),
    Lndimg(
        tittle: '',
        text:
            '',
        image: 'assets/images/image3.jpeg'),
    Lndimg(
        tittle: '',
        text:
            '',
        image: 'assets/images/image4.jpeg'),
    Lndimg(
        tittle: '',
        text:
            '',
        image: 'assets/images/image5.jpeg'),
  ];

  Widget build(BuildContext context) {
    return Column(
      children: landimage.map((aux) => CardTemplate(aux: aux)).toList(),
    );
  }
}
