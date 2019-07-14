import 'package:flutter/material.dart';

Widget footer() {
  return BottomAppBar(
    shape: CircularNotchedRectangle(),
        notchMargin: 5.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton( icon: Icon(Icons.home), onPressed: () {}),
            IconButton( icon: Icon(Icons.settings), onPressed: () {}),
          ],
        ),
  );
}