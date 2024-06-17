import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Sempre começar um projeto com o MaterialApp()
    return MaterialApp(
      //Home = Widget inicial, como se fosse a index
      home: Scaffold(
        //Cor de fundo do aplicativo
        backgroundColor: Colors.teal,
        //Corpo do aplicativo
        body: Padding(
          padding: EdgeInsets.all(13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/perfil.jpg'),
              ),
              Text(
                'Acelino Popô',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'Lutador',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.teal[100]),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        '+5511987633322',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ),
               Card(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'popo@gmail.com',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
