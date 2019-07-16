import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:medical_sys/src/widgets/bottomBar.dart';

class ListaPage extends StatefulWidget {

  @override
  _ListaDatosState createState() => _ListaDatosState();
}

class _ListaDatosState extends State<ListaPage> with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {

  AnimationController _controller;

  Map datos;
  List hospitales;

  getHospitales() async {
    http.Response response = await http.get('https://medicalsysapp.herokuapp.com/hospital/todas');
    datos = json.decode(response.body);
    setState(() {
     hospitales = datos['hospitales']; 
    });
  }

  @override
  void initState() {
    super.initState();
     _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    getHospitales();
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
          child: ListView.builder(
            itemCount: hospitales == null ? 0 : hospitales.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child: Card(
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
                              fontSize: 10.0,
                              color: Colors.blueAccent[200],
                              fontWeight: FontWeight.w500
                            ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.pushNamed(context, 'detalle', arguments: hospitales);
                },
              );
            },
          ),
        ),
        bottomNavigationBar: footer(),
    );
  }

  @override
  bool get wantKeepAlive => true;

}
