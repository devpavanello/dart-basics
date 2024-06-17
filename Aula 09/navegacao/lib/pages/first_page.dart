import 'package:flutter/material.dart';
import 'package:navegacao/contato.dart';
import 'package:navegacao/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Navegar'),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return SecondPage(
                contato: Contato('Enzo', 'enzo@fiap.com'),
              );
            }));
          },
        ),
      ),
    );
  }
}
