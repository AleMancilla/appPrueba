import 'package:flutter/material.dart';

class page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Image(
              image: NetworkImage('https://concepto.de/wp-content/uploads/2015/03/paisaje-e1549600034372.jpg'),
              fit: BoxFit.cover,
              width: _screenSize.width,
              height: 170.0,
              ),
          ),

          Container(
            padding: EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  //color: Colors.blue,
                  width: _screenSize.width*0.65,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Titulo",style: Theme.of(context).textTheme.title,),
                      Text("Subtitulo",style: Theme.of(context).textTheme.subhead,)
                    ],
                  ),
                ),
                Icon(Icons.star,color: Colors.redAccent, size: 25.0,),
                Text("45",style: TextStyle(fontSize: 15.0),)
              ],
            ),
          ),

        ],
      ),
    ),
    );
    
    
    
  }
}