import 'package:flutter/material.dart';
import 'package:trabalho01/components/components.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _distanciaController = TextEditingController();
  final _valorCombustivelController = TextEditingController();
  final _mediaVeiculoController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora custo de Viagem"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          CampoTexto(_distanciaController, 'Qual a distancia em Km ?'),
          CampoTexto(_valorCombustivelController, 'Qual o valor do combustivel ?',prefixo: "R\$", ),
          CampoTexto(_mediaVeiculoController, 'Qual a media do veiculo em KM/L?'),
          BotaoQuadrado ("Calcular", calculaMedia),
        ],
      ),
    );
  }

    void _mensagem(String texto){
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Custo da Viagem', style: TextStyle(fontSize: 22),),
            content: Text(texto, style: const TextStyle(fontSize: 20),),
            actions: [
              BotaoQuadrado('OK', () { Navigator.pop(context); }),
            ],
          );
        }
    );
  }

  void calculaMedia (){
    double mediaVeiculo = double.tryParse(_mediaVeiculoController.text.replaceAll(',', '.')) ?? 0;
    double valorCombustivel = double.tryParse(_valorCombustivelController.text.replaceAll(',', '.')) ?? 0;
    double kmPercorrido = double.tryParse(_distanciaController.text.replaceAll(',', '.')) ?? 0;

    double resultado = (kmPercorrido / mediaVeiculo) * valorCombustivel ;

    _mensagem("O custo da viagem foi de $resultado");
  }

}
