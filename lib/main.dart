import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}


class _MyAppState extends State<MyApp> {
  int contador = 10; 


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'app de conteo',
      home: Scaffold(
        
        body: Container(
          color: Colors.white, 
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Valor del contador:',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '$contador',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.grey.withOpacity(0.7),
                onPressed: sumar, 
                child: const Text("+", style: TextStyle(fontSize: 24)),
              ),
              FloatingActionButton(
                backgroundColor: Colors.grey.withOpacity(0.7),
                onPressed: restar, 
                child: const Text("-", style: TextStyle(fontSize: 24)),
              ),
              FloatingActionButton(
                backgroundColor: Colors.grey.withOpacity(0.7),
                onPressed: multiplicar, 
                child: const Text("*", style: TextStyle(fontSize: 24)),
              ),
              FloatingActionButton(
                backgroundColor: Colors.grey.withOpacity(0.7),
                onPressed: dividir, 
                child: const Text("/", style: TextStyle(fontSize: 24)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void sumar() {
    setState(() {
      contador += 2;
    });
  }

  void restar() {
    setState(() {
      contador -= 2;
    });
  }

  void multiplicar() {
    setState(() {
      contador *= 2;
    });
  }

  void dividir() {
    setState(() {
      contador ~/= 2;
    });
  }
}