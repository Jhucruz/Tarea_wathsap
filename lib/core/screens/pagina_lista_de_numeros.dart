import 'package:flutter/material.dart';
import 'package:numeros_whats_app/core/ui/tarjeta_informacion_telefono.dart';
import 'package:numeros_whats_app/models/numero_de_telefono.dart';

class PaginaListaDeNumeros extends StatelessWidget {
  const PaginaListaDeNumeros({required this.numerosDetelefono, super.key});

  final List<NumeroDeTelefono> numerosDetelefono;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      children: numerosDetelefono.map((numeroDeTelefono) {
        return TarjetaInformacionTelefono(numeroDeTelefono: numeroDeTelefono);
      }).toList(),
    );
  }
}
