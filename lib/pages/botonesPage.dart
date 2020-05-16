import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BotonoesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.black));

    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondo(),
          SingleChildScrollView(
            child: _titulos(),
          )
          
        ],
      ),
      bottomNavigationBar: _bottonNavigatonBar(context),
    );
  }

  Widget _bottonNavigatonBar(BuildContext context){
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,  
        textTheme: Theme.of(context).textTheme.copyWith(caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))
      ), 
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Container(),
          ),
        ]
      )
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

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Incididunt ', style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold)),
            SizedBox(height: 5.0,),
            Text('Pariatur veniam fugiat.', style: TextStyle(color: Colors.white,fontSize: 20.0 ,fontWeight: FontWeight.normal)),
          ],
        ),
      )
    );
  }
}