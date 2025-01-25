import 'package:flutter/material.dart';
import 'package:numeros_whats_app/core/screens/pagina_principal.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PaginaPrincipal(),
    );
  }
}
