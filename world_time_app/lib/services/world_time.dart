import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {                                    //crea clase WorldTime
  String location; // location name for UI
  String time; // the time in that location
  String flag; // url to an asset flag icon
  String url; // location url for api endpoint
  bool isDaytime; // true or false if daytime or not

  WorldTime({this.location, this.flag, this.url});   //creo constructor

  Future<void> getTime() async {            //método vacío que se comunica con la API pública

    try {
      // generar la petición a la API pública
      Response response =               //almacena en variable "response" la información pedida en un objeto tipo "Response"
          await get('http://worldtimeapi.org/api/timezone/$url');  //await permite esperar la respuestas
      Map data = jsonDecode(response.body);

      // get properties from json
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(0, 3);
      print(datetime);

      // create DateTime object
      DateTime now = DateTime.parse(datetime);
      print(data['utc_offset']);
      print(offset);
      now = now.add(Duration(hours: int.parse(offset)));
      print(int.parse(offset));
      print(Duration(hours: int.parse(offset)));
      print(now);
      print(now.hour);

      // set the time property

      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
      print(DateFormat.jm().format(now));
    } catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
    }
  }
}
