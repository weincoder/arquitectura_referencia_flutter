// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_example/helpers/get_bmi_value.dart';
import 'package:test_example/helpers/validate_user_data.dart';
import 'package:design_system_weincode/molecules/card_tile.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  var currentBmi = "ingresa tus datos para saber tu estado" ;
  double weight = 0;
  double height = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white, fontSize: 34),
          semanticsLabel: widget.title,
        ),
      ),
      body:
        Container(
          padding: const EdgeInsets.all(21),
          child: ListView(
            children: <Widget>[
              const SizedBox(
                height: 8,
              ),
              Text(
                'Calcula tu IMC 🧮',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                  width: 350,
                  child: TextField(
                    key: const Key('textFieldWeight'),
                    controller: _weightController,
                    decoration:
                        const InputDecoration(hintText: 'Ingrese su peso',),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
                      LengthLimitingTextInputFormatter(5),
                    ],
                  )),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                  width: 350,
                  child: TextField(
                    key: const Key('textFieldHeight'),
                    controller: _heightController,
                    decoration:
                        const InputDecoration(hintText: 'Ingrese su estatura'),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
                      LengthLimitingTextInputFormatter(4),
                    ],
                  )),
              const SizedBox(
                height: 8,
              ),
              Image.asset(
                'images/bmi.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                key: const Key('buttonCalculateBMI'),
                  onPressed: () {
                    weight = getWeight(_weightController.value.text);
                    height = getHeight(_heightController.value.text);
                    setState(() {
                      currentBmi = getBMICategory(weight, height);
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      'Obtener resultado',
                      style: TextStyle(color: Colors.white, fontSize: 34),
                    ),
                  )),
              const SizedBox(height: 35,),
              WeincodeCardTile(
                path: 'images/scale.png',
                title: 'Tu estado actual es ',
                height: 220,
                id: currentBmi,
              ),
            ],
          ),
        ),
    );
  }
}
