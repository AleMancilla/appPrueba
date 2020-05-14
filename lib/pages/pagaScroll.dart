import 'package:flutter/material.dart';

class PageScroll extends StatelessWidget {
  const PageScroll({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _page1(),
          _page2(),
        ],
      ),
    );
  }

  Widget _page1() {
    return Center(
      child: Text("Hola Mundo 1"),
    );
  }

  Widget _page2() {
    return Center(
      child: Text("Hola Mundo 2"),
    );
  }
}