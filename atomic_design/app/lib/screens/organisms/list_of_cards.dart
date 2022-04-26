import 'package:flutter/material.dart';
import 'package:design_system_weincode/templates/show_component_template.dart';
import 'package:design_system_weincode/molecules/card_tile.dart';
import 'package:design_system_weincode/organisms/list_of_cards.dart';

class ListOfCards extends StatelessWidget {
  const ListOfCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    final List<WeincodeCardTile> _listCards = [
      const WeincodeCardTile(
        path: 'assets/images/ufo.png',
        title: 'title',
        id: 'some description',
      ),
      const WeincodeCardTile(
        path: 'assets/images/alien.png',
        title: 'title',
        id: 'some description',
      ),
      const WeincodeCardTile(
        path: 'assets/images/metroid.png',
        title: 'title',
        id: 'some description',
      ),
    ];
     final List<Widget> examples = [
      WeincodeListOfCards(listCards:_listCards,)
    ];
    return ShowComponentTemplate(
      listOfWidgets: examples,
      title: 'List Of Cards',
      longDescription: 'Use this widget when you need render a list of cards',
    );
  }
}
