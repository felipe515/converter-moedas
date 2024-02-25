import 'package:flutter/material.dart';

class MoedaBox extends StatefulWidget {
  const MoedaBox({super.key});

  @override
  _MoedaBoxState createState() => _MoedaBoxState();
}

class _MoedaBoxState extends State<MoedaBox> {
  String dropdownValue = 'Real';

  @override
  Widget build(BuildContext context) {
    return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 56,
                      child: DropdownButton(
                        iconEnabledColor: Colors.amber,
                        isExpanded: true,
                        value: dropdownValue,
                        underline: Container(
                          height: 1,
                          color: Colors.amber,
                        ),
                        items: const [
                          DropdownMenuItem(value: 'Real', child: Text('Real')),
                          DropdownMenuItem(value: 'Dolar', child: Text('Dolar')),
                        ],
                        onChanged: (value) {
                          setState(() {
                            dropdownValue = value.toString();
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber)
                        ),
                        
                      ),
                    ),
                  ),
                ],
              );
  }
  
}
  
