import 'package:flutter/material.dart';
import 'dart:math' as math;
class TransformWidgetExample extends StatefulWidget {
  const TransformWidgetExample({Key? key}) : super(key: key);

  @override
  State<TransformWidgetExample> createState() => _TransformWidgetExampleState();
}

class _TransformWidgetExampleState extends State<TransformWidgetExample> {
  Offset offset = Offset.zero;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Example TransformWidget📐')),
      body: Center(
          child: Transform(
              // Transform widget
              transform: Matrix4.identity()
                ..setEntry(2, 3, 0.001) // perspective
                ..rotateX(0.01 * offset.dx) // changed
                ..rotateY(0.01 * offset.dy), // changed
              alignment: FractionalOffset.center,
              child: GestureDetector(
                // new
                onPanUpdate: (details) =>
                    setState(() => offset += details.delta),
                onDoubleTap: () => setState(() => offset = Offset.zero),
                child: Container(
                    decoration: const BoxDecoration(color: Colors.black12),
                    height: 500,
                    width: 500,
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Hello Flutter Medellin 😎 ${offset.toString()}',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ))),
              ))),
    );
  }
}
