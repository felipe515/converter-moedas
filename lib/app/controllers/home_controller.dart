import 'package:conversor_moedas/app/models/moeda_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  late List<MoedaModel> moedas;

  final TextEditingController toText;
  final TextEditingController fromText;

  late MoedaModel toMoeda;
  late MoedaModel fromMoeda;

  HomeController({required this.toText, required this.fromText}) {
    moedas = MoedaModel.getmoedas();
    toMoeda = moedas[0];
    fromMoeda = moedas[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
    double returnValue = 0;

    if (fromMoeda.name == "Real") {
      returnValue = value * toMoeda.real;
    } else if (fromMoeda.name == "Dolar") {
      returnValue = value * toMoeda.dolar;
    } else if (fromMoeda.name == "Euro") {
      returnValue = value * toMoeda.euro;
    } else if (fromMoeda.name == "Bitcoin") {
      returnValue = value * toMoeda.bitcoin;
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }
}
