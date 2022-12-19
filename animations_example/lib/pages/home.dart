import 'package:animations_example/routes/routes.dart';
import 'package:design_system_weincode/atoms/weincode_separeted.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AnimatedSession🏇🏇',
        ),
      ),
      body: Center(
          child: Column(
        children: [
          const WeincodeSepareted(nSepareted: 0.5),
          ElevatedButton(
              onPressed: (() =>
                  Navigator.of(context).pushNamed(AppRoutes.implicitAnimation)),
              child: const Text('Ejemplo Animaciones implicitas')),
          const WeincodeSepareted(nSepareted: 0.5),
          ElevatedButton(
              onPressed: (() =>
                  Navigator.of(context).pushNamed(AppRoutes.tweenExample)),
              child: const Text('Ejemplo Tween')),
          const WeincodeSepareted(nSepareted: 0.5),
          ElevatedButton(
              onPressed: (() =>
                  Navigator.of(context).pushNamed(AppRoutes.transform)),
              child: const Text('Ejemplo transform')),
          const WeincodeSepareted(nSepareted: 0.5),
          ElevatedButton(
              onPressed: (() =>
                  Navigator.of(context).pushNamed(AppRoutes.explicitAnimation)),
              child: const Text('Ejemplo Animaciones Explicitas')),
        ],
      )),
    );
  }
}
