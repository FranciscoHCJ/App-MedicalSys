import 'package:flutter/material.dart';
import 'package:medical_sys/src/util/color.dart';
 
Widget topBar(titulo, color, context, media) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.location_on, color: Colors.greenAccent),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(titulo,
            style: TextStyle(
              color: Color(getColorHexFromStr('#323643')),
              fontSize: 18.0),
              ),
          ],
        ),
      ],
    );
}