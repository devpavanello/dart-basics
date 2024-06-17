import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int contador = 0;
  String msg = ' ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stateful - Exemplo')
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('clicou $contador vezes no botão'), Text(msg)],),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState((){
              if(contador < 10){
                contador++;
              }else{
                msg = 'Atingiu o limite de clicks';
              }
            });
            print('clicou: $contador');
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
