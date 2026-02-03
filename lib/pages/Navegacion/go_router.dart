import 'package:go_router/go_router.dart';
import '../deep_linking/deep_linking_page.dart';
import '../home/home_page.dart';
import 'navigator_page.dart';


/// GoRouter centraliza TODA la navegación de la app
/// Aquí se definen las rutas y las pantallas asociadas
final GoRouter appRouter = GoRouter(
  routes: [
    /// Ruta principal (home)
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),

    /// Segunda pantalla
    GoRoute(
      path: '/navigator',
      name: 'navigator',
      builder: (context, state) => const NavigatorPage(),
    ),

    // Ruta para usar Deeplinks con parametros en el go_router

    GoRoute(
      path: '/item/:id',
      name: 'item',
      builder: (context, state){
        // Extraemos el parámetro 'id' de la URL
        final id = state.pathParameters['id']!;
        // Pasamos el id a la página DeepLinkingPage
        return DeepLinkingPage(id: id);
      },
    ),
  ],
);