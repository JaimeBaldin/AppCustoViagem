import 'package:flutter/material.dart';

class BotaoQuadrado extends StatelessWidget {
  final String texto;
  final VoidCallback clique;

  const BotaoQuadrado(this.texto, this.clique, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ElevatedButton(
        onPressed: clique,
        child: Text(texto),
      ),
    );
  }
}