import 'package:flutter/material.dart'
    show BuildContext, MaterialApp, StatelessWidget, Widget;
import 'package:numeros_whats_app/core/screens/detalles_numero_de_telefono.dart';
import 'package:numeros_whats_app/core/screens/pagina_principal.dart';
import 'package:numeros_whats_app/display/routes/routes.dart';
import 'package:numeros_whats_app/display/screens/detalles_numero_de_telefono.dart';
import 'package:numeros_whats_app/display/screens/pagina_principal.dart';
import 'package:numeros_whats_app/routes/routes.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.paginaInicial,
      routes: {
        Routes.paginaInicial: (_) {
          return PaginaPrincipal();
        },
        Routes.detalleNumero: (_) {
          return DetallesNumeroDeTelefono();
        }
      },
    );
  }
}
