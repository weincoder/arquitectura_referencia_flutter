import 'package:flutter/material.dart';
import 'package:perfo_example/widgets/fake_element_tile.dart';

class HighPerfoPage extends StatelessWidget {
  const HighPerfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('High Performance 🧐✅')),
      body: Center(
        child: ListView.builder(
            itemCount: 10000,
            itemBuilder: (context, index) =>
                FakeElementTile(currentNumber: index)),
      ),
    );
  }
}
