import '../components/bottom_button.dart';
import 'package:calculadora_imc_24/components/contador.dart';
import 'package:calculadora_imc_24/components/custom_card.dart';
import 'package:calculadora_imc_24/components/gender_content.dart';
import 'package:calculadora_imc_24/components/modal_result.dart';

import 'package:calculadora_imc_24/components/slider_altura.dart';

import 'package:flutter/material.dart';

enum Sexo { masculino, feminino }

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});

  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  //Aqui cria as variavies de estado
  //M = 0, F = 1
  int? generoSelecionado;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        generoSelecionado = 0;
                      });
                    },
                    child: CustomCard(
                      active: generoSelecionado == 0,
                      child: GenderContent(
                        icon: Icons.male,
                        label: 'Masculino',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        generoSelecionado = 1;
                      });
                    },
                    child: CustomCard(
                      active: generoSelecionado == 1,
                      child: GenderContent(
                        icon: Icons.female,
                        label: 'Feminino',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(
              child: SliderAltura(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    child: Contador(),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    child: Contador(),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(buttonTitle: 'Calcular IMC')
        ],
      ),
    );
  }
}
