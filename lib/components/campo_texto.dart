import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final TextEditingController controlador;
  final String texto;
  final String? prefixo;
  final TextInputType teclado;

  const CampoTexto(this.controlador, this.texto,
      {this.prefixo, this.teclado = TextInputType.number, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: TextField(
        controller: controlador,
        keyboardType: teclado,
        decoration: InputDecoration(
          labelText: texto,
          prefixText: prefixo,
          border: const OutlineInputBorder(),
          labelStyle: const TextStyle(fontSize: 20),
        ),
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}