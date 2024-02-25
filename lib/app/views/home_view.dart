import 'package:conversor_moedas/app/components/moeda_box.dart';
import 'package:flutter/material.dart';


class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 100, bottom: 20),
          child: Column(
            children: [
              Image.asset('assets/moeda1.png', width: 150, height: 150),
              const SizedBox(height: 50),
              const MoedaBox(),
              const SizedBox(height: 10),
              const MoedaBox(),
              const SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, foregroundColor: Colors.white
                ),
                onPressed: () {},
                child: const Text('Converter'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}