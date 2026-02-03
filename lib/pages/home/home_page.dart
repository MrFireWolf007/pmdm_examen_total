import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// 1-NavigationBar: Creamos una variable para la opcion seleccionada
int _selectedIndex = 0;

class _HomePageState extends State<HomePage> {
  // 2-NavigationBar: Ahora creamos una lista de paginas para navegar
  // *Actualizamos ahora el contenido para usar Navigator*
  late final List<Widget> _pages = [
    // Página Home
    Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () {
              // Navegacion con nombre usando GoRouter
              context.goNamed('navigator');
            },
            child: const Text('Ir a pantalla Navigator'),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              // Navegar a la página de deep linking (item) pasando un id
              context.go('/item/1');
            },
            child: const Text('Ir a deep_linking (item 1)'),
          ),
        ],
      ),
    ),

    // Página Multimedia (de momento simple)
    const Center(child: Text('Multimedia')),

    // Página Perfil
    const Center(child: Text('Perfil')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proyecto base PMDM'),
        backgroundColor: Colors.blue,
      ),
      // 1-Dreawer va en el Scaffold y para que tenga el icono de menu existir un AppBar
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Drawer',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ),
            // Ahora vamos a añadirle opciones al Drawer para poder navegar
            // para ello usamos ListTile
            ListTile(leading: Icon(Icons.home), title: Text('Home')),
            ListTile(leading: Icon(Icons.image), title: Text('Multimedia')),
            ListTile(leading: Icon(Icons.login), title: Text('Login')),
          ],
        ),
      ),

      // 3-NavigationBar
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.image), label: 'Multimedia'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),

      // 4-NavigationBar: cambiamos el body por la página seleccionada
      body: _pages[_selectedIndex],
    );
  }
}
