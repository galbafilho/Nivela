import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const SingUp());
}

class SingUp extends StatelessWidget{
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro'
      theme: ThemeData(
        primarySwatch: Color.white,
    ),
    )

  }
  }
}