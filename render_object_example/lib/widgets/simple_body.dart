import 'package:flutter/material.dart';
import 'package:render_object_example/widgets/show_image.dart';



class SimpleBody extends StatefulWidget {
  const SimpleBody({Key? key}) : super(key: key);

  @override
  State<SimpleBody> createState() => _SimpleBodyState();
}

class _SimpleBodyState extends State<SimpleBody> {
  final String dartGamer = 'images/dashgamer.png';
  final String dartSide = 'images/dartside.png';
  bool isDartSide = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        ShowImage(pathImage: isDartSide? dartSide:dartGamer),
        ElevatedButton(onPressed: (){
            setState(() {
              isDartSide = !isDartSide;
            });
        }, child: const Text('Cambiar path')),
        Text(isDartSide? dartSide:dartGamer)
      ]),
    );
  }
}