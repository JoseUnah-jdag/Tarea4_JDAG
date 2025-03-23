import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:proyecto_api/src/modelo/guerrero.dart';
import 'package:proyecto_api/src/proveedor/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Center(
                child: Text(
              "Dragon Ball",
              style: TextStyle(fontSize: 40, color: Colors.yellow),
            ))),
        body: FutureBuilder<Guerreros>(
          future: getguerreros(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData) {
              return Center(child: Text('No se encontraron los datos'));
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.items.length,
                itemBuilder: (context, index) {
                  final guerrero = snapshot.data!.items[index];
                  return Card(
                    color: Colors.yellow,
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      title: Text(
                        guerrero.name,
                        style: TextStyle(fontSize: 30, color: Colors.purple),
                      ),
                      subtitle: Text(
                        guerrero.affiliation,
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                      leading: Image.network(
                        guerrero.image,
                        width: 100,
                        height: 100,
                      ),
                      onTap: () {
                        context.goNamed('detalleguerrero', extra: guerrero);
                      },
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
