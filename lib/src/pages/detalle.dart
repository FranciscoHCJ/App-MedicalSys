import 'package:flutter/material.dart';
import 'package:medical_sys/src/models/hospital.dart';

class DetallePage extends StatelessWidget {
  const DetallePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Hospital hospital = ModalRoute.of(context).settings.arguments;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Información del Hospital'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0), 
              child: Image(
              image: NetworkImage(hospital.imageUrl ),
              height: 150.0,
              ),
            ),
            SizedBox(width: 20.0),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(hospital.nombre)
                ],
              ),
            )
          ],
        ),
      )
    );
  }

}
