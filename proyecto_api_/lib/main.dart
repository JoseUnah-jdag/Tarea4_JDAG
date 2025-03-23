import 'package:flutter/material.dart';
import 'package:proyecto_api/src/rutas/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Dragon Ball',
      routerConfig: goRouter,
    );
  }
}
