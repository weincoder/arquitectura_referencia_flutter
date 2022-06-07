import 'package:app/config/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:design_system_weincode/molecules/circle_accionable_card.dart';
import 'package:design_system_weincode/atoms/weincode_separeted.dart';
import 'package:design_system_weincode/foundations/sizes.dart';
import 'package:design_system_weincode/atoms/weincode_asset_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    ShowcaseInfo(),
    CreatorsInfo()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    return Scaffold(
      appBar: AppBar(title: const Text('ShowcaseApp🛒')),
      body: _widgetOptions.elementAt(this._selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'About',
            ),
          ],
          currentIndex: this._selectedIndex,
          selectedItemColor: Theme.of(context).primaryColor,
          onTap: _onItemTapped),
    );
  }
}

class ShowcaseInfo extends StatelessWidget {
  const ShowcaseInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
      child: ListView(
        children: [
          const WeincodeSepareted(nSepareted: 0.5),
          WeincodeCircleAccionableCard(
            nameOfCardLabel: 'Foundations Components',
            descriptionOfActionLabel: 'Go to Foundations',
            title: 'Foundations',
            routeAssetImage: 'assets/images/foundation.png',
            actionCard: () => Navigator.of(context).pushNamed(AppRoutes.foundation),
          ),
          const WeincodeSepareted(nSepareted: 0.5),
          WeincodeCircleAccionableCard(
            nameOfCardLabel: 'Atoms Components',
            descriptionOfActionLabel: 'Go to atoms showcase',
            title: 'Atoms',
            routeAssetImage: 'assets/images/atoms.png',
            actionCard: () => Navigator.of(context).pushNamed(AppRoutes.atoms),
          ),
          const WeincodeSepareted(nSepareted: 0.5),
          WeincodeCircleAccionableCard(
            nameOfCardLabel: 'Molecules Components',
            descriptionOfActionLabel: 'Go to molecules showcase',
            title: 'Molecules',
            routeAssetImage: 'assets/images/molecules.png',
            actionCard: () => Navigator.of(context).pushNamed(AppRoutes.molecules),
          ),
          const WeincodeSepareted(nSepareted: 0.5),
          WeincodeCircleAccionableCard(
            nameOfCardLabel: 'Organisms Components',
            descriptionOfActionLabel: 'Go to Organisms showcase',
            title: 'Organisms',
            routeAssetImage: 'assets/images/organisms.png',
            actionCard: () => Navigator.of(context).pushNamed(AppRoutes.organisms),
          ),
          const WeincodeSepareted(nSepareted: 0.5),
          WeincodeCircleAccionableCard(
            nameOfCardLabel: 'Templates Components',
            descriptionOfActionLabel: 'Go to Templates showcase',
            title: 'Templates',
            routeAssetImage: 'assets/images/templates.png',
            actionCard: () => Navigator.of(context).pushNamed(AppRoutes.templates),
          ),
          const WeincodeSepareted(nSepareted: 0.5),
          WeincodeCircleAccionableCard(
            nameOfCardLabel: 'Pages Components',
            descriptionOfActionLabel: 'Go to Pages showcase',
            title: 'Pages',
            routeAssetImage: 'assets/images/pages.png',
            actionCard: () => Navigator.of(context).pushNamed(AppRoutes.pages),
          ),
        ],
      ),
    );
  }
}

class CreatorsInfo extends StatelessWidget {
  const CreatorsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
      padding: const EdgeInsets.all(WeincodeSizesFoundation.baseSepareted),
      child: ListView(children: [
        const WeincodeAssetImage(
            path: 'assets/images/weincode.png',
            widthImage: 100,
        ),
        const WeincodeSepareted(nSepareted: 0.5),
        Text(
          'Project built by the Weincode community. If you are going to use it please reference the original project in your build. You are free to use and contribute the content of this project, even for monetary purposes.',
          style: Theme.of(context).textTheme.headline6,
        )
      ]),
    );
  }
}
