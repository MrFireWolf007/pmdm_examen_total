// Pagina a la que vamos a navegar a traves de Navigator
// Primero creamos la pagina y despues la importamos *mirar asteriscos*

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            // Usamos GoRouter para volver a la ruta 'home' en vez de manipular
            // directamente el Navigator (evita dejar la pila vacía cuando
            // se navegó con context.goNamed(...)).
            context.goNamed('home');
          },
          child: const Text('Volver'),
        ),
      ),
    );
  }
}