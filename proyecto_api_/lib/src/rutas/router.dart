import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:proyecto_api/src/modelo/guerrero.dart';
import 'package:proyecto_api/src/vistas/home_page.dart';
import 'package:proyecto_api/src/vistas/detalleguerrero.dart';

final goRouter = GoRouter(initialLocation: '/home_page', routes: [
  GoRoute(
      path: '/home_page',
      name: 'home_page',
      builder: (context, state) => HomePage(),
      routes: [
        GoRoute(
          path: '/detalleguerrero',
          name: 'detalleguerrero',
          builder: (BuildContext context, GoRouterState state) {
            final guerrero = state.extra as Item;
            return Detalleguerrero(guerrero: guerrero);
          },
        ),
      ]),
]);
