import 'package:flutter/material.dart';

class ExplicitAnimationExample extends StatefulWidget {
  const ExplicitAnimationExample({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimationExample> createState() =>
      _ExplicitAnimationExampleState();
}

class _ExplicitAnimationExampleState extends State<ExplicitAnimationExample>
    with SingleTickerProviderStateMixin {
  late AnimationController animatedContoller;
  Color currenColor = Colors.blueAccent;
  double currenAngle = 0.0;
  late Animation<Color?> colorTweenAnimation;
  late Animation<double> rotateAnimation;
  late Animation<double> sizeAnimation;
  @override
  void initState() {
    super.initState();
    animatedContoller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3000));
    colorTweenAnimation =
        ColorTween(begin: Colors.blueAccent, end: Colors.deepPurple).animate(
            CurvedAnimation(
                parent: animatedContoller, curve: const Interval(0.0, 1.0)));
    rotateAnimation = Tween<double>(begin: 0, end: 3).animate(CurvedAnimation(
        parent: animatedContoller, curve: const Interval(0.0, 1.0)));
    sizeAnimation = Tween<double> (begin: 143, end: 243).animate(CurvedAnimation(
        parent: animatedContoller, curve: const Interval(0.0, 1.0)));
    animatedContoller.repeat(reverse: true);
    animatedContoller.addListener(() {
      setState(() {
        currenColor = colorTweenAnimation.value!;
        currenAngle = rotateAnimation.value;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    animatedContoller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animation Controler 🐱‍👤')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.rotate(
            angle: rotateAnimation.value,
            child: Icon(
              Icons.light_mode,
              color: colorTweenAnimation.value,
              size: sizeAnimation.value,
            ),
          ),
          Text('Animated Controller its amazing 🤯', style: TextStyle(color: colorTweenAnimation.value,fontSize: 21),)
        ],
      )),
    );
  }
}
