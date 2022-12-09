import 'package:flutter/material.dart';

class ImplicitAnimationExample extends StatefulWidget {
  const ImplicitAnimationExample({Key? key}) : super(key: key);

  @override
  State<ImplicitAnimationExample> createState() =>
      _ImplicitAnimationExampleState();
}

class _ImplicitAnimationExampleState extends State<ImplicitAnimationExample> {
  double currentFontSize = 13;
  Color colorContainer = Colors.yellow;
  double currentPadding = 13;
  double currentTurn = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ImplicitAnimation🧙‍♂️')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedRotation(
            duration: const Duration(milliseconds: 500),
            turns:currentTurn,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 1500),
              color: colorContainer,
              padding: EdgeInsets.all(currentFontSize),
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 1500),
                style: TextStyle(fontSize: currentFontSize),
                child: const Text( 'Animaciones Sencillas pero prácticas')),
            ),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(
            () {
              currentTurn += 1.0 / 8.0;
              if (currentFontSize == 21) {
                colorContainer = Colors.yellow;
                currentFontSize = 13;
                currentPadding = 13;
              }else{
                colorContainer = Colors.green;
                currentFontSize = 21;
                currentPadding = 34;
              }
            },
          )
        },
        child: const Icon(Icons.agriculture_sharp),
      ),
    );
  }
}
