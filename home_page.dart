import 'package:flutter/material.dart';

class count extends StatefulWidget {
  const count({super.key});

  @override
  State<count> createState() => _countState();
}

class _countState extends State<count> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

var contador = 0;
bool click1 = false;
bool click2 = false;
bool click3 = false;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi Iteso"),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: SizedBox(
              height: 250,
              width: MediaQuery.of(context).size.width - 5,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: const Text(
                          'El ITESO, Universidad Jesuita de Gudalajara',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'San Pedro Tlaquepaque, Jal.',
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(onPressed: (){contador++; setState(() {});}, icon: Icon(Icons.thumb_up), color: Colors.blue),
                SizedBox(width: 10,),
                Text(
                  contador.toString(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        click1 = !click1;
                        setState(() {});
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(content: Text("No tienes ningún correo")),
                          );
                      },
                      icon: Icon(Icons.email),
                      color: (click1 == false ? Colors.black : Colors.indigo),
                      iconSize: 50),
                  Text("Correo"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        click2 = !click2;
                        setState(() {});
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(content: Text("No tienes ninguna llamada")),
                          );
                      }, icon: Icon(Icons.phone), color: (click2 == false ? Colors.black : Colors.indigo), iconSize: 50),
                  Text("Llamada"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {click3 = !click3; setState((){});
                      ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(content: Text("La ruta se ha copiado al portapapeles")),
                          );
                      },
                      icon: Icon(
                        Icons.directions,
                      ),
                      color: click3 == false ? Colors.black : Colors.indigo,
                      iconSize: 50),
                  Text("Ruta"),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 64,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 70,
                child: Text(
                  "El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente) es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957. La institución forma parte del Sistema Universitario Jesuita (SUJ) que integra a ocho universidades en México. La universidad es nombrada como la Universidad Jesuita de Guadalajara. Historia. Fundada en el año de 1957 por el Padre Luis Hernández Prieto S.J.,José Aguilar Figueroa y el ingeniero José Fernández del Valle y Ancira, entre otros, la universidad ha tenido una larga trayectoria. A continuación se presenta la historia de la institución en periodos de décadas.",
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
