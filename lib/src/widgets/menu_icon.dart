import 'package:flutter/material.dart';

Widget iconSelection({IconData icon}) {
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: ListTile(
      contentPadding: const EdgeInsets.all(5.0),
      leading: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [Colors.green, Colors.greenAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight 
          )
        ),
        child: Icon(
          icon,
          size: 28,
          color: Colors.white70,
        ),
      ),
    ),
  );
}

Widget buildRoutinesItem(Size media, text, text2, {IconData icon}) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: media.width * .9,
          child: ListTile(
            title: Text(text),
            subtitle: Text(text2),
            trailing: Icon( Icons.keyboard_arrow_right, color: Colors.green),
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Colors.green, Colors.greenAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight 
                )
              ),
              child: Icon(
              icon,
              size: 28,
              color: Colors.white70,
              ),
            ),
          ),
        ),
      ),
    );
  }