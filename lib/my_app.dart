import 'package:flutter/material.dart';
import 'package:pmdm_examen_total/pages/Navegacion_Navigator_Go_router/go_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  // Modificamos MaterialApp por MaterialApp.router
  // para usar GoRouter
  // Y le pasamos la configuración de rutas con routerConfig

  Widget build(BuildContext context) {
    return  MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // Configuracion del goRouter
      routerConfig: appRouter,
    );
  }
}
