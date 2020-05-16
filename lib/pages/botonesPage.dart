import 'dart:math';
import 'dart:ui';

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
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
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

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearTableBoton(Colors.blue, Icons.accessible,"hola M"),
            _crearTableBoton(Colors.pink, Icons.accessible_forward,"Marii"),
          ]
        ),
        TableRow(
          children: [
            _crearTableBoton(Colors.yellow, Icons.account_circle,"Preciosa"),
            _crearTableBoton(Colors.red, Icons.add_shopping_cart,"hermoza"),
          ]
        ),
        TableRow(
          children: [
            _crearTableBoton(Colors.white, Icons.usb,"Princesa"),
            _crearTableBoton(Colors.black, Icons.radio,"bb brrrr"),
          ]
        ),
        TableRow(
          children: [
            _crearTableBoton(Colors.blue, Icons.accessible,"hola M"),
            _crearTableBoton(Colors.blue, Icons.accessible,"hola M"),
          ]
        ),
      ],
    );
  }

  Widget _crearTableBoton(Color color, IconData icono, String texto) {
    return Container(
            margin: EdgeInsets.all(10.0),
      child: ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
          child: Container(
            height: 150,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(25.0),
              color: Color.fromRGBO(62, 66, 107, 0.7),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundColor: color,
                  child: Icon(
                    icono,
                    size: 40.0,),
                ),
                SizedBox(height: 10.0,),
                Text(texto,style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}