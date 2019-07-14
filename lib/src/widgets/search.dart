import 'package:flutter/material.dart';

Widget buscar() {
  return Container(
    decoration: BoxDecoration(
      color: Color.fromRGBO(192, 192, 192, 0.1),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      )
    ),
    child: TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0)
        ),
        prefixIcon: Icon( Icons.search, color: Colors.grey),
        hintText: 'Buscar médicos, hospitales, clinicas, farmacias',
        hintStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey,
          fontSize: 18.0
        )
      ),
    ),
  );
}