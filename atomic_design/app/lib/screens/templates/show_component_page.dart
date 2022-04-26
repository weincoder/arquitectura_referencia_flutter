
import 'package:flutter/material.dart';
import 'package:design_system_weincode/templates/show_component_template.dart';
import 'package:design_system_weincode/atoms/weincode_asset_image.dart';

class ShowComponentPage extends StatelessWidget {
  const ShowComponentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> examplesNormal = [
      Text('A simple image', style: Theme.of(context).textTheme.headline6,),
      const WeincodeAssetImage(
        path: 'assets/images/ufo.png',
        widthImage: 200,
      ),
    ];
    final List<Widget> examples = [
      SizedBox(
        height: 800,
        child: ShowComponentTemplate(
        listOfWidgets: examplesNormal,
        title: 'Card Tile',
        longDescription: 'Use this widget when you need render a image from url',
    ),
      )
    ];
    return ShowComponentTemplate(
      listOfWidgets: examples,
      title: 'Show Info Component',
      longDescription: 'Use this widget when you need show the info about one component',
    );
  }
}
