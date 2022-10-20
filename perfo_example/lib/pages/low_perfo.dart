import 'package:flutter/material.dart';
import 'package:perfo_example/widgets/fake_element_tile.dart';

class LowPerfoPage extends StatelessWidget {
  const LowPerfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Low Performance 🫣❌')),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: getListOfFakeElement(),
        ),
      )),
    );
  }
}

List<Widget> getListOfFakeElement() {
  List<Widget> fakeList = [];
  int totalWidgetToDraw = 10000;
  for (var i = 0; i < totalWidgetToDraw; i++) {
    fakeList.add(SizedBox(
      width: 550,
      child: FakeElementTile(currentNumber: i),
    ));
  }
  return fakeList;
}
