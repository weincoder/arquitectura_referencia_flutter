import 'package:design_system_weincode/atoms/weincode_separeted.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class TweenAnimationBuilderExample extends StatefulWidget {
  const TweenAnimationBuilderExample({Key? key}) : super(key: key);

  @override
  State<TweenAnimationBuilderExample> createState() =>
      _TweenAnimationBuilderExampleState();
}

class _TweenAnimationBuilderExampleState
    extends State<TweenAnimationBuilderExample> {
  double _targetSize = 300;
  double _targetPosition = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Example Tween')),
      body: Column(
        children: [
          const WeincodeSepareted(nSepareted: 0.5),
          Container(
            alignment: Alignment.center,
            child: TweenAnimationBuilder(
              tween: Tween<double>(
                begin: 50,
                end: _targetSize,
              ),
              duration: const Duration(seconds: 2),
              onEnd: () {
                setState(() {
                  if (_targetSize == 50) {
                    _targetSize = 300;
                  } else {
                    _targetSize = 50;
                  }
                });
              },
              curve: Curves.easeIn,
              builder: (BuildContext _, double size, Widget? __) {
                return Container(
                  width: size,
                  height: size,
                  decoration: const BoxDecoration(
                      gradient: RadialGradient(
                          center: Alignment.center,
                          colors: [Colors.blue, Colors.deepPurple]),
                      shape: BoxShape.circle),
                );
              },
            ),
          ),
          const WeincodeSepareted(nSepareted: 0.5),
          TweenAnimationBuilder(
            duration: const Duration(milliseconds: 1000),
            curve: Curves.fastOutSlowIn,
            tween: Tween<double>(begin: 1.0, end: _targetPosition),
            builder: (context, value, child) {
              return Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateY(math.pi * value),
                alignment: FractionalOffset.center,
                child: value < 0.5 ? const FrontCard() : const BackCard(),
              );
            },
            onEnd: () {
              if (_targetPosition == 0) {
                _targetPosition = 1;
              } else {
                _targetPosition = 0;
              }
            },
          )
        ],
      ),
    );
  }
}

class FrontCard extends StatelessWidget {
  const FrontCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: const BoxDecoration(color: Colors.indigoAccent),
      child: const Center(
          child:  Text('Front',
              style: TextStyle(fontSize: 34, color: Colors.white))),
    );
  }
}

class BackCard extends StatelessWidget {
  const BackCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateY(math.pi),
      alignment: FractionalOffset.center,
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(color: Colors.indigo[400]),
        child: const Center(
            child: Text(
          'Back',
          style: TextStyle(fontSize: 34, color: Colors.white),
        )),
      ),
    );
  }
}
