import 'package:flutter/material.dart';

Widget slideItem(image, context,  onTap ) {
  return GestureDetector(
    onTap: (){ Navigator.pushNamed(context, 'lista');},
      child: AspectRatio(
        aspectRatio: 1.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FadeInImage(
                image: AssetImage(image),
                placeholder: AssetImage(image),
                fadeInDuration: Duration( milliseconds: 200 ),
                height: 195.0,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ],
          ),
      )
  );
}