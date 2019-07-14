import 'package:flutter/material.dart';
import 'package:medical_sys/src/pages/buscar.dart';

import 'package:medical_sys/src/pages/detalle.dart';
import 'package:medical_sys/src/pages/home.dart';
import 'package:medical_sys/src/pages/listPage.dart';
import 'package:medical_sys/src/pages/mapa.dart';
import 'package:medical_sys/src/pages/opciones.dart';
import 'package:medical_sys/src/pages/ubicacion.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder> {
    '/'         : (BuildContext context) => HomePage(),
    'lista'     : (BuildContext context) => ListaPage(),
    'detalle'   : (BuildContext context) => DetallePage(),
    'ubicacion' : (BuildContext context) => UbicacionPage(),
    'map'       : (BuildContext context) => MapTodasPage(),
    'buscar'    : (BuildContext context) => BuscarPage(),
    'opciones'  : (BuildContext context) => OpcionesPage()

  };
}