import 'package:flutter/material.dart';

Widget position() {
  return Row(
    children: <Widget>[
      Text('Nezahualcóyotl...',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18.0
        ),
      ),
      SizedBox(width: 5.0),
      Icon(Icons.arrow_drop_down)
    ],
  );
}