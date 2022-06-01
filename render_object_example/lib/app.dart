import 'package:flutter/material.dart';
import 'package:render_object_example/page/home.dart';

class RenderObjectExample extends StatelessWidget {
  const RenderObjectExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(
        primaryColor: Colors.deepPurple
      ),
    );
  }
}