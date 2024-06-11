import 'package:flutter/material.dart';

/// Flutter code sample for [Drawer].

void main() => runApp(const DrawerApp());

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const DrawerExample(),
    );
  }
}

class DrawerExample extends StatefulWidget {
  const DrawerExample({super.key});

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  String selectedPage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Painel', textAlign: TextAlign.center,),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration:
              BoxDecoration(
                color: Colors.orange,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Perfil'),
              onTap: () {
                setState(() {
                  selectedPage = 'Perfil';
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Painel'),
              onTap: () {
                setState(() {
                  selectedPage = 'Painel';
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configurações'),
              onTap: () {
                setState(() {
                  selectedPage = 'Configurações';
                });
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Page: $selectedPage'),
      ),
    );
  }
}
