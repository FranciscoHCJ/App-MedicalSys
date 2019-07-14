import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class ListaPage extends StatefulWidget {

  @override
  _ListaDatosState createState() => _ListaDatosState();
}

class _ListaDatosState extends State<ListaPage> {

  Map datos;
  List hospitales;

  getHospitales() async {
    http.Response response = await http.get('http://192.168.1.69:3000/hospital/todas');
    datos = json.decode(response.body);
    setState(() {
     hospitales = datos['hospitales']; 
    });
  }

  @override
  void initState() {
    super.initState();
    getHospitales();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Hospitales'),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
        itemCount: hospitales == null ? 0 : hospitales.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(hospitales[index]['imageUrl']),
                    )
                  ),
                  Text(
                      hospitales[index]['nombre'],
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.blueAccent[200],
                        fontWeight: FontWeight.w500
                      ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

