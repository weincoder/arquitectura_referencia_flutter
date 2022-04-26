import 'package:flutter/material.dart';
import 'package:design_system_weincode/templates/show_component_template.dart';
import 'package:design_system_weincode/molecules/card_tile.dart';

class TileCard extends StatelessWidget {
  const TileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> examples = [
      
      Text('A simple tile card', style: Theme.of(context).textTheme.headline6,),
      const WeincodeCardTile(
        path: 'assets/images/ufo.png',
        title: 'title',
        id: 'some description',
      ),
    ];
    return ShowComponentTemplate(
      listOfWidgets: examples,
      title: 'Card Tile',
      longDescription: 'Use this widget when you need render a tile card',
    );
  }
}
