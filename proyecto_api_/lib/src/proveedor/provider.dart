import 'package:http/http.dart' as http;
import 'package:proyecto_api/src/modelo/guerrero.dart';

Guerreros? cacheGuerreros;

Future<Guerreros> getguerreros() async {
  if (cacheGuerreros != null) {
    return cacheGuerreros!;
  }

  try {
    final response =
        await http.get(Uri.parse("https://dragonball-api.com/api/characters"));
    cacheGuerreros = guerrerosFromJson(response.body);
    return guerrerosFromJson(response.body);
  } catch (e) {
    throw Exception("Error al obtener los datos: $e");
  }
}
