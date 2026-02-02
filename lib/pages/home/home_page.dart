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
      body: const Center(
        child: Text(
          'Todo listo 🚀',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
