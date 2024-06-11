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
            padding: EdgeInsets.symmetric(vertical: 24.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Processar dados de login
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Processando dados')),
                  );
                }
              },
              child: Text('Login'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Ação para o botão "Cadastrar"
              // Navegar para a tela de cadastro, por exemplo
            },
            child: Text('Cadastrar'),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Ação para o botão "Login com Google"
              // Implementar a lógica de login com Google
            },
            child: Text('Login com Google'),
          ),
        ],
      ),
    );
  }
}