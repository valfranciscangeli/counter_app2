import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); // llama al constructor de la clase padre
  // key sirve para identificar un widget dentro del contexto

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // scaffold le da como un tema pa que se vea astetik

      backgroundColor: const Color.fromARGB(255, 229, 162, 196),
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 1.0, // si le damos mas deja una sombra
      ),
      body: const Center(
        child: Text('Hola desde HomeScreen'),
      ),
    );
  }
}
