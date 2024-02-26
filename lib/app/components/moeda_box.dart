import 'package:conversor_moedas/app/models/moeda_model.dart';
import 'package:flutter/material.dart';

class MoedaBox extends StatelessWidget {
  final List<MoedaModel> itens;
  final MoedaModel selectedItem;
  final TextEditingController controller;
  final void Function(MoedaModel?)? onChanged;

  const MoedaBox({super.key, required this.itens, required this.controller, required this.selectedItem, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SizedBox(
            height: 56,
            child: DropdownButton<MoedaModel>(
              iconEnabledColor: Colors.amber,
              isExpanded: true,
              value: selectedItem,
              underline: Container(
                height: 1,
                color: Colors.amber,
              ),
              items: itens.map((e) => DropdownMenuItem(
                value: e,
                child: Text(e.name))).toList(),
              onChanged: onChanged,
            ),
          ),
        ),
        const SizedBox(width: 10),
         Expanded(
          flex: 2,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber)),
            ),
          ),
        ),
      ],
    );
  }
}
