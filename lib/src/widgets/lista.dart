import 'package:flutter/widgets.dart';
import 'package:medical_sys/src/models/hospital.dart';

import 'package:flutter/material.dart';

class ListaDatos extends StatelessWidget {
  final List<Hospital> hospitales;

  ListaDatos({ @required this.hospitales});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
            itemCount: hospitales == null ? 0 : hospitales.length,
            itemBuilder: (BuildContext context, int index) => _tarjeta(context, hospitales[index]),
          );
  }

  Widget _tarjeta( BuildContext context, Hospital hospital) {

    final _screenSize = MediaQuery.of(context).size;

    final tarjeta = Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(hospital.imageUrl),
                          )
                        ),
                        Text(
                            hospital.nombre,
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.blueAccent[200],
                              fontWeight: FontWeight.w500
                            ),
                        ),
                      ],
                    ),
      ),
    );

      return GestureDetector(
        child: tarjeta,
        onTap: () {
          Navigator.pushNamed(context, 'detalle', arguments: hospital);
        },
      );
  }

}