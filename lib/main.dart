import 'package:flutter/material.dart';
import 'package:practica_flutter/pages/botonesPage.dart';
import 'package:practica_flutter/pages/pagaScroll.dart';
import 'package:practica_flutter/pages/page1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/pageBotones',
      routes: {
        '/' : (BuildContext context) => page1(),
        '/pageScroll' : (BuildContext context) => PageScroll(),
        '/pageBotones' : (BuildContext context) => BotonoesPage(),
      },
    );
  }
}
