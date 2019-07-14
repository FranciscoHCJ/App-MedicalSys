import 'package:flutter/material.dart';
import 'package:medical_sys/src/pages/home.dart';

import 'package:medical_sys/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MedicalSys',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {

        print('Ruta llamada: ${settings.name}' );

        return MaterialPageRoute(
          builder: (BuildContext context ) => HomePage()
        );
      },
    );
  }
}
