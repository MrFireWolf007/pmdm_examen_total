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
                'Menú principal con un Drawer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              )
            )
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
