import 'dart:math';

import 'package:flutter/material.dart';

class BotonoesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondo()
        ],
      ),
    );
  }

  Widget _fondo() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0,  0.1),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ]
        )
      ),
    );

    final caja = Transform.rotate(angle: -pi/5.0,
    child:  Container(
      width: 270.0,
      height: 270.0,
      //color: Colors.pink,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.pink,
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(236, 98, 188, 1.0),
            Color.fromRGBO(241, 142, 172, 1.0),
          ]
        )
      ),
    )
    );
    
   

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -50.0,
          child: caja
        )
        
    ],);
  }
}