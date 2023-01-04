import 'package:counter_app2/screens/counter_screen.dart';
import 'package:flutter/material.dart'; // paquete de cupertino esta estilizado para ios

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // no lo explicó pa que es esto

  // para que una clase sea widget debe heredar de uno stateless o statefull

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        // el padre mas alto deberia ser el que tenga const cuando sale el warning de que necesita const
        debugShowCheckedModeBanner: false,
        home: CounterScreen());
  }
}
