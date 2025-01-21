import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Página Motivacional',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MotivationalPage(),
    );
  }
}

class MotivationalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases Motivacionais'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Primeira seção
          Expanded(
            child: Container(
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  '"O sucesso é a soma de pequenos esforços repetidos dia após dia."',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          // Segunda seção
          Expanded(
            child: Container(
              color: Colors.greenAccent,
              child: Center(
                child: Text(
                  '"Acredite em si mesmo e todo o resto se encaixará."',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          // Terceira seção
          Expanded(
            child: Container(
              color: Colors.orangeAccent,
              child: Center(
                child: Text(
                  '"A persistência é o caminho do êxito."',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
