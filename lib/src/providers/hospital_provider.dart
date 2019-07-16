import 'package:medical_sys/src/models/hospital.dart';

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

class HospitalesProvider {

  Future<Hospital> getHospitales() async {
    final response = await http.get('https://medicalsysapp.herokuapp.com/hospital/todas');

    if (response.statusCode == 200) {
      // Si el servidor devuelve una repuesta OK, parseamos el JSON
      return Hospital.fromJsonMap(json.decode(response.body));
    } else {
    // Si esta respuesta no fue OK, lanza un error.
    throw Exception('Failed to load hospital');
    }
  }
}