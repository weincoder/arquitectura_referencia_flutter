import 'package:flutter/material.dart';
import 'package:design_system_weincode/templates/show_component_template.dart';
import 'package:design_system_weincode/molecules/circle_accionable_card.dart';

class CircleCard extends StatelessWidget {
  const CircleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> examples = [
      Text(
        'UFO',
        style: Theme.of(context).textTheme.headline6,
      ),
      WeincodeCircleAccionableCard(
          routeAssetImage: 'assets/images/ufo.png',
          title: 'UFO',
          actionCard: () {
             ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                      'You click inside the UFO')));
          }),
      Text(
        'Alien',
        style: Theme.of(context).textTheme.headline6,
      ),
      WeincodeCircleAccionableCard(
          routeAssetImage: 'assets/images/alien.png',
          title: 'Alien',
          actionCard: () {
             ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                      'You click inside the alien')));
          }),
      Text(
        'Metroid',
        style: Theme.of(context).textTheme.headline6,
      ),
      WeincodeCircleAccionableCard(
          routeAssetImage: 'assets/images/metroid.png',
          title: 'Metroid',
          actionCard: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                      'You click inside the metroid')));
          }),
    ];
    return ShowComponentTemplate(
      listOfWidgets: examples,
      title: 'Circle Card',
      longDescription:
          'Use this widget when you need clickable circle card',
    );
  }
  

}
