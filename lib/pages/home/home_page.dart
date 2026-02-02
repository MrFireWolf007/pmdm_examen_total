import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proyecto base PMDM'),
        backgroundColor: Colors.blue,
      ),
      // El Drawer siempre va en el Scaffold y para que tenga el icono de menu existir un AppBar
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            // Ahora vamos a añadirle opciones al Drawer para poder navegar
            // para ello usamos ListTile
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('Multimedia'),
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('Login'),
            ),
          ],
        )
      ),
      body: const Center(
        child: Text(
          'Todo listo en el Home🚀',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
