import 'package:flutter/material.dart';

class Escreve extends StatelessWidget {
  Escreve({Key? key}) : super(key: key);

  final acontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('escreva AGORA'),
        ),
        body: Column(children: [
          TextField(controller: acontroller),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context, acontroller.text);
              },
              child: const Text('envia'))
        ]));
  }
}
