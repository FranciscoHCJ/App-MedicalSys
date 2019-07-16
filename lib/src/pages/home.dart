import 'package:flutter/material.dart';
import 'package:medical_sys/src/widgets/bottomBar.dart';
import 'package:medical_sys/src/widgets/menu_icon.dart';
import 'package:medical_sys/src/widgets/position.dart';
import 'package:medical_sys/src/widgets/search.dart';
import 'package:medical_sys/src/widgets/slide.dart';
import 'package:medical_sys/src/widgets/topBar.dart';
 
class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    Size media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: media.height,
        width: media.width,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: media.height * 0.04,
              left: 10.0,
              child: topBar('Tu Ubicación', Colors.white, context, media),
            ),
            Positioned(
              top: media.height * 0.07,
              width: media.width,
              left: 15.0,
              child: position(),
            ),
            Positioned(
              top: media.height * 0.12,
              width: media.width * 0.92,
              left: 15.0,
              child: buscar(),
            ),
            Positioned(
                top: media.height * .2,
                height: (media.height * .40) -100,
                width: (media.height * .67) - 100,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.only(left: 16),
                        physics: const AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          slideItem("assets/slide_3.png", context, (){}),
                          slideItem("assets/slide_2.png", context, (){}),
                          slideItem("assets/slide_3.png", context, (){}),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: media.height * .45,
                height: (media.height * .60) - 100,
                width: media.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Buscar por categorias',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              iconsCategory(context, media, "Médicos", icon: Icons.person),
                              iconsCategory(context, media, "Hospitales", icon: Icons.local_hospital),
                              iconsCategory(context, media, "Clinicas", icon: Icons.local_convenience_store),
                              iconsCategory(context, media, "Farmacias", icon: Icons.local_pharmacy),
                            ],
                          )
                        ],
                      )
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        child: Icon(
          Icons.location_on,
          size: 40.0),
        onPressed: () {
          Navigator.pushNamed(context, 'map');
        },
      ),
      bottomNavigationBar: footer()
    );
  }
}
