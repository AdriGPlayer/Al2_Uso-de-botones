import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Botones de Colores'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ColoredButton(color: Colors.red),
              SizedBox(height: 20),
              ColoredButton(color: Colors.green),
              SizedBox(height: 20),
              ColoredButton(color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}

class ColoredButton extends StatelessWidget {
  final Color color;

  const ColoredButton({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Lógica a ejecutar cuando se presiona el botón
        print('Botón de color ${color.toString()} presionado');
      },
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: EdgeInsets.all(20),
      ),
      child: Text(
        'Botón',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
