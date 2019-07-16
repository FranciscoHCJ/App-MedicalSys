import 'package:flutter/material.dart';

Widget iconsCategory(context, Size media, text, {IconData icon}) {
    return Expanded(
      child: Container(
        child: Container(
          width: media.width * .9,
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                  height: media.width * .16,
                  width: media.width * .2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Colors.green, Colors.greenAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight 
                    )
                  ),
                  child: IconButton(
                    icon: Icon(
                      icon,
                      size: media.width * .1,
                      color: Colors.white70
                    ),
                    onPressed: (){Navigator.pushNamed(context, 'lista');},
                  ),
                  ),
                  SizedBox(height: media.height * .02),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }