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
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.lightBlue,
          ),
          Image(
            image: AssetImage('assets/scroll.png'),
            width: double.infinity, 
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Text("11°",style: TextStyle(fontSize: 50,color: Colors.white),),
              Text("Miercoles",style: TextStyle(fontSize: 30,color: Colors.white),),
              Expanded(child: Container()),
              Icon(Icons.keyboard_arrow_down,size: 60,color: Colors.white,)
            ],
          )
        ],
      ),
    );
  }

  Widget _page2() {
    return Center(
      child: null,
    );
  }
}