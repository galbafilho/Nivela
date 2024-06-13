import 'package:flutter/material.dart';
import 'package:mobile/styles/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      theme: meuTema, // Aplica o tema definido em theme.dart
      home: TelaPrincipal(),
    );
  }
}