import 'package:enviapop/escreve.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MainApp(),
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  MainAppState createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  String textoRecebido = 'sssssss';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Main Page'),
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Escreve()),
                );
                setState(() {
                  textoRecebido = result;
                });
              },
              child: Text(textoRecebido),
            ),
          )),
    );
  }
}
