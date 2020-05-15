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
            width: double.infinity, 
            height: double.infinity,
            color: Color.fromRGBO(108, 192, 2018, 1.0),
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
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 2018, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          child: Padding(padding: EdgeInsets.all(20),child: Text("Hola Mundo"),),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: (){}
        ),
      ),
    );
  }
}