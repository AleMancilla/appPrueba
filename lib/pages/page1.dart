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

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(Icons.call,color: Colors.blueAccent, size: 40.0,),
                    Text("Call", style: TextStyle(color: Colors.blueAccent,fontSize: 15.0),)
                  ],
                ),
                SizedBox(width: 35.0,),
                Column(
                  children: <Widget>[
                    Icon(Icons.near_me,color: Colors.blueAccent, size: 40.0,),
                    Text("Route", style: TextStyle(color: Colors.blueAccent,fontSize: 15.0),)
                  ],
                ),
                SizedBox(width: 35.0,),
                Column(
                  children: <Widget>[
                    Icon(Icons.share,color: Colors.blueAccent, size: 40.0,),
                    Text("Share", style: TextStyle(color: Colors.blueAccent,fontSize: 15.0),)
                  ],
                )
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(25),
            child: Column(
              children: <Widget>[
                Text('¿Por qué lo usamos? Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo Contenido aquí, contenido aquí. Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de Lorem Ipsum va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo)',textAlign: TextAlign.justify,),
                Divider(),
                Text('¿Por qué lo usamos? Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo Contenido aquí, contenido aquí. Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de Lorem Ipsum va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo)',textAlign: TextAlign.justify,),
                Divider(),
                Text('¿Por qué lo usamos? Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo Contenido aquí, contenido aquí. Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de Lorem Ipsum va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo)',textAlign: TextAlign.justify,),
                Text('',textAlign: TextAlign.justify,),
              ],
            ),
          )

        ],
      ),
    ),
    );
    
    
    
  }
}