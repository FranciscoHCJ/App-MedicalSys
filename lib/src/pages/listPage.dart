import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:medical_sys/src/models/hospital.dart';
import 'dart:convert';
import 'dart:async';
import 'package:medical_sys/src/widgets/bottomBar.dart';
import 'package:medical_sys/src/widgets/lista.dart';


class ListaPage extends StatefulWidget {

  @override
  _ListaDatosState createState() => _ListaDatosState();
}

class _ListaDatosState extends State<ListaPage> with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {

  AnimationController _controller;

  // Map datos;
  Future<List<Hospital>> hospitales;
  // List<Hospital> hospitales;

  Future<List<Hospital>> getHospitales() async {
    final response = await http.get('https://medicalsysapp.herokuapp.com/hospital/todas');

    if (response.statusCode == 200) {
      // Si el servidor devuelve una repuesta OK, parseamos el JSON
      final decodedData = json.decode(response.body);
      final hospitaless = new Hospitales.fromJsonList(decodedData['hospitales']);
      return hospitaless.items;
    } else {
    // Si esta respuesta no fue OK, lanza un error.
    throw Exception('Failed to load hospital');
    }
  }

  // getHospitales() async {
  //   http.Response response = await http.get('https://medicalsysapp.herokuapp.com/hospital/todas');
  //   datos = json.decode(response.body);
  //   setState(() {
  //    hospitales = datos['hospitales']; 
  //   });
  // }

  @override
  void initState() {
    super.initState();
     _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    hospitales = getHospitales();
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }


  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de Hospitales'),
          backgroundColor: Colors.greenAccent,
        ),
        body: SlideTransition(
          position: Tween<Offset>(
            begin: Offset(0.0, 2.0),
            end: Offset(0.0, 0.0)
          ).animate(
            _controller
          ),
          child: FutureBuilder(
            future: hospitales,
            builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
              if (snapshot.hasData) {
                return ListaDatos(hospitales: snapshot.data);
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          )
        ),
        bottomNavigationBar: footer(),
    );
  }

  @override
  bool get wantKeepAlive => true;

}
