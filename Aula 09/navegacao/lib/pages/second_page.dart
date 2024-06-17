import 'package:flutter/material.dart';

import '../contato.dart';

class SecondPage extends StatelessWidget {
  final Contato contato;
  const SecondPage({super.key, required this.contato});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Bem-vindo ${contato.nome}'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}