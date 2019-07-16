import 'package:flutter/material.dart';
import 'package:medical_sys/src/models/hospital.dart';

class DetallePage extends StatelessWidget {
  const DetallePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Información Hospital'),
      ),
      body: Column(
        children: <Widget>[
          Text('Ejemplo')
        ],
      ),
    );
  }
}