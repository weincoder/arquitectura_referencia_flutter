import 'package:flutter/material.dart';

class FakeElementTile extends StatelessWidget {
  int currentNumber;
  FakeElementTile({Key? key, required this.currentNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.primaries[currentNumber % Colors.primaries.length],
      child: FittedBox(
        child: Text(currentNumber.toString()),
      ),
    );
  }
}
