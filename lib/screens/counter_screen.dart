import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key}); // llama al constructor de la clase padre

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    var fontConfig = const TextStyle(
        fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold);

    return Scaffold(
      // scaffold le da como un tema pa que se vea astetik

      backgroundColor: const Color.fromARGB(255, 230, 124, 177),
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text('CounterScreen'),
        elevation: 1.0, // si le damos mas deja una sombra
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:
              CrossAxisAlignment.center, // relativo al widget de mayor tamanho
          children: [
            // <widget> significa que todo lo que ponga dentro de las llaves debe ser un widget
            Text(
              'clicks counter',
              style: fontConfig,
            ),
            Text(
              '$counter',
              style: fontConfig,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        backgroundColor: Colors.redAccent,
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
