import 'package:flutter/material.dart';
import 'package:design_system_weincode/molecules/circle_accionable_card.dart';
import 'package:design_system_weincode/atoms/weincode_separeted.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ShowcaseApp🛒')),
      body: ListView(
        children: [
          const WeincodeSepareted(nSepareted: 0.5),
          WeincodeCircleAccionableCard(
            title: 'Atoms',
            routeAssetImage: 'assets/images/atoms.png',
            actionCard: () {},
          ),
          const WeincodeSepareted(nSepareted: 0.5),
          WeincodeCircleAccionableCard(
            title: 'Molecules',
            routeAssetImage: 'assets/images/molecules.png',
            actionCard: () {},
          ),
          const WeincodeSepareted(nSepareted: 0.5),
          WeincodeCircleAccionableCard(
            title: 'Organisms',
            routeAssetImage: 'assets/images/organisms.png',
            actionCard: () {},
          ),
          const WeincodeSepareted(nSepareted: 0.5),
          WeincodeCircleAccionableCard(
            title: 'Templates',
            routeAssetImage: 'assets/images/templates.png',
            actionCard: () {},
          ),
          const WeincodeSepareted(nSepareted: 0.5),
          WeincodeCircleAccionableCard(
            title: 'Pages',
            routeAssetImage: 'assets/images/pages.png',
            actionCard: () {},
          ),
          // Image.asset('assets/images/atoms.png'),
        ],
      ),
    );
  }
}
