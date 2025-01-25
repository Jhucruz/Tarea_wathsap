import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:numeros_whats_app/core/ui/input_personalizado.dart';

class PaginaAgregarNumeros extends StatefulWidget {
  const PaginaAgregarNumeros({super.key});

  @override
  State<PaginaAgregarNumeros> createState() => _PaginaAgregarNumerosState();
}

class _PaginaAgregarNumerosState extends State<PaginaAgregarNumeros> {
  final _idForm = GlobalKey<FormState>();
  final _maskNumero = MaskTextInputFormatter(mask: '(+51) ### ### ###');
  final _descripcionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _idForm,
        child: Column(
          spacing: 8,
          children: [
            InputPersonalizado(
              label: 'Ingrese número de telefono',
              keyboardType: TextInputType.phone,
              inputFormatters: [_maskNumero],
              validator: (valor) => RequiredValidator(
                      errorText: 'El numero de teléfono es requerido')
                  .call(valor),
            ),
            InputPersonalizado(
              controller: _descripcionController,
              maxLength: 20,
              autocorrect: false,
              label: 'Descripción',
              validator: (valor) =>
                  RequiredValidator(errorText: 'La descripcion es requerida')
                      .call(valor),
            ),
            ElevatedButton.icon(
              onPressed: () {
                final esValido = _idForm.currentState?.validate() ?? false;
                print('+51${_maskNumero.getUnmaskedText()}');
              },
              icon: Icon(Icons.person_add),
              label: Text('Abrir en WA'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _descripcionController.dispose();
    super.dispose();
  }
}
