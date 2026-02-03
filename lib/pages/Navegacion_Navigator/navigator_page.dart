// Pagina a la que vamos a navegar a traves de Navigator
// Primero creamos la pagina y despues la importamos *mirar asteriscos*

import 'package:flutter/material.dart';

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Navigator'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          // Al pulsar, volvemos a la pantalla anterior
          onPressed: () {
            // Navigator.pop elimina esta pantalla de la pila
            Navigator.pop(context);
          },
          child: const Text('Volver'),
        ),
      ),
    );
  }
}