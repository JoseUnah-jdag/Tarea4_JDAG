import 'package:flutter/material.dart';
import 'package:proyecto_api/src/modelo/guerrero.dart';

class Detalleguerrero extends StatelessWidget {
  const Detalleguerrero({super.key, required this.guerrero});
  final Item guerrero;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "DETALLES",
          style: TextStyle(color: Colors.blue, fontSize: 40),
        )),
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: Colors.blue,
      body: PageView(
        //physics: NeverScrollableScrollPhysics(),
        children: [
          Center(child: Image.network(guerrero.image, width: 600, height: 600)),
          SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'Nombre:',
                          style: stylepropiedad,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          guerrero.name,
                          style: stylevalor,
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: alturasizedboxes,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'Ki:',
                          style: stylepropiedad,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          guerrero.ki,
                          style: stylevalor,
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: alturasizedboxes,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'Ki Maximo:',
                          style: stylepropiedad,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          guerrero.maxKi.toString(),
                          style: stylevalor,
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: alturasizedboxes,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'Afiliacion:',
                          style: stylepropiedad,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          guerrero.affiliation,
                          style: stylevalor,
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: alturasizedboxes,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'Raza:',
                          style: stylepropiedad,
                          textAlign: TextAlign.left,
                        ),
                        Text(guerrero.race,
                            style: stylevalor, textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: alturasizedboxes,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'Genero:',
                          style: stylepropiedad,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          guerrero.gender,
                          style: stylevalor,
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text('Descripcion:',
                        style: TextStyle(
                            fontSize: 30, color: Colors.yellowAccent)),
                    Text(guerrero.description,
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

TextStyle stylepropiedad = TextStyle(fontSize: 35, color: Colors.white);
TextStyle stylevalor = TextStyle(fontSize: 35, color: Colors.yellowAccent);
double anchoconteiners = 400;
double alturasizedboxes = 0;
