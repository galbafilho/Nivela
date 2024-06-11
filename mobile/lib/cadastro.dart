import 'package:flutter/material.dart';
import 'funcs_cadastro.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tela de Login"),
        ),
        body: Center(
          child: LoginForm(),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _senhaController = TextEditingController();
  final _confirmaSenhaController = TextEditingController();

  @override
  void dispose() {
    _senhaController.dispose();
    _confirmaSenhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, insira seu email';
                }
                if (!value.contains('@')) {
                  return 'Por favor, insira um email válido';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextFormField(
              controller: _senhaController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, insira sua senha';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextFormField(
              controller: _confirmaSenhaController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirme a Senha',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, confirme sua senha';
                }
                if (value != _senhaController.text) {
                  return 'As senhas não coincidem';
                }
                return null;
              },
            ),
          ),
          // Botão Cadastrar
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(); // Volta para a tela principal
            },
            child: Text('Cadastrar'),
          ),
          SizedBox(height: 16.0),
          // Botão Login com Google
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(); // Volta para a tela principal
            },
            child: Text('Login com Google'),
          ),
        ],
      ),
    );
  }
}