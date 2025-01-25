import 'package:flutter/material.dart';
import 'package:numeros_whats_app/core/screens/pagina_agregar_numeros.dart';
import 'package:numeros_whats_app/core/screens/pagina_lista_de_numeros.dart';

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Numero de WhatsApp'),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.message),
              child: Text(
                'Abrir número en WhatsaApp',
                textAlign: TextAlign.center,
              ),
            ),
            Tab(
              icon: Icon(Icons.phone),
              child: Text('Lista de números'),
            ),
          ]),
        ),
        body: TabBarView(children: [
          PaginaAgregarNumeros(),
          PaginaListaDeNumeros(),
        ]),
      ),
    );
  }
}
