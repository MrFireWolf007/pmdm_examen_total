import 'package:go_router/go_router.dart';
import 'package:pmdm_examen_total/pages/Navegacion_Navigator_Go_router/navigator_page.dart';
import '../home/home_page.dart';


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
  ],
);