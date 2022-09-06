import 'package:flutter/material.dart';
import 'package:design_system_weincode/molecules/circle_accionable_card.dart';
import 'package:design_system_weincode/atoms/weincode_separeted.dart';
import 'package:perfo_example/config/routes/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfo Example App 📈')),
      body: Center(
          child: Column(
        children: [
          const WeincodeSepareted(nSepareted: 0.5),
          WeincodeCircleAccionableCard(
              nameOfCardLabel: 'Screen with low performance',
              descriptionOfActionLabel: 'Screen with low performance',
              title: 'Low Perfo',
              routeAssetImage: 'images/low-performance.png',
              actionCard: () =>
                  Navigator.of(context).pushNamed(AppRoutes.lowPerfo)),
          const WeincodeSepareted(nSepareted: 0.5),
          WeincodeCircleAccionableCard(
              nameOfCardLabel: 'Screen with high performance',
              descriptionOfActionLabel: 'Screen with high performance',
              title: 'High Perfo',
              routeAssetImage: 'images/performance.png',
              actionCard: () =>
                  Navigator.of(context).pushNamed(AppRoutes.highPerfo)),
          const WeincodeSepareted(nSepareted: 0.5),
          WeincodeCircleAccionableCard(
              nameOfCardLabel: 'show the network field example',
              descriptionOfActionLabel: 'show the network field example',
              title: 'Network',
              routeAssetImage: 'images/global.png',
              actionCard: () =>
                  Navigator.of(context).pushNamed(AppRoutes.networkExample)),
        ],
      )),
    );
  }
}
