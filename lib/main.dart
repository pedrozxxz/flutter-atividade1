import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String nomeExibido = '';

  void mostrarPedro() {
    setState(() {
      nomeExibido = 'Pedro';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text('Minha Aplicação de Boas-Vindas'),
            SizedBox(width: 50),
            Icon(Icons.person), 
          ],
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Bem-vindo ao mundo Flutter!'),
            const Text('Senai é vida!'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: mostrarPedro,
              child: const Text('Mostrar Nome'),
            ),
            const SizedBox(height: 20),
            Text(
              nomeExibido,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Botão pressionado!');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}