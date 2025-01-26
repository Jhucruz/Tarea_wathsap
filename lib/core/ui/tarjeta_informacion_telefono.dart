import 'package:flutter/material.dart';
import 'package:numeros_whats_app/models/numero_de_telefono.dart';

class TarjetaInformacionTelefono extends StatelessWidget {
  const TarjetaInformacionTelefono({
    required this.numeroDeTelefono,
    super.key,
  });

  final NumeroDeTelefono numeroDeTelefono;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(numeroDeTelefono.numeroDeTelefonoFormateado),
        subtitle: Text(numeroDeTelefono.descripcion),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.phone,
                color: Colors.blue,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: Colors.green,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete_forever,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
