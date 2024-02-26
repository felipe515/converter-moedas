import 'package:conversor_moedas/app/components/moeda_box.dart';
import 'package:conversor_moedas/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
  //State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();
  late HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 100, bottom: 20),
          child: ListView(
            children: [
              Image.asset('assets/moeda1.png', width: 150, height: 150),
              const SizedBox(height: 50),
              MoedaBox(
                  selectedItem: homeController.toMoeda,
                  controller: toText,
                  itens: homeController.moedas,
                  onChanged: (model) {
                    setState(() {
                      homeController.toMoeda = model!;
                    });
                  }),
              const SizedBox(height: 10),
              MoedaBox(
                  selectedItem: homeController.fromMoeda,
                  controller: fromText,
                  itens: homeController.moedas,
                  onChanged: (model) {
                    setState(() {
                      homeController.fromMoeda = model!;
                    });
                  }),
              const SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.white),
                onPressed: () {
                  homeController.convert();
                },
                child: const Text('Converter'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
