import 'package:flutter/material.dart';

import 'package:design_system_weincode/templates/show_component_template.dart';
import 'package:design_system_weincode/atoms/weincode_separeted.dart';
import 'package:design_system_weincode/foundations/colors.dart';

class AtomSepareted extends StatelessWidget {
  const AtomSepareted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> examples = [
      Text(
        'nSepareted = 0.5',
        style: Theme.of(context).textTheme.headline6,
      ),
      Column(children: [
        Container(
          width: 120,
          decoration: BoxDecoration(
              color: WeincodeColorsFoundation.warningBgColor,
              borderRadius: BorderRadius.circular(21)),
          child: Center(
              child: Text(
            'Widget A',
            style: Theme.of(context).textTheme.headline6,
          )),
        ),
        const WeincodeSepareted(
          nSepareted: 0.5,
        ),
        Container(
          width: 120,
          decoration: BoxDecoration(
              color: WeincodeColorsFoundation.succcessBgColor,
              borderRadius: BorderRadius.circular(21)),
          child: Center(
              child: Text(
            'Widget B',
            style: Theme.of(context).textTheme.headline6,
          )),
        ),
      ]),
      Text(
        'nSepareted = 1',
        style: Theme.of(context).textTheme.headline6,
      ),
      Column(children: [
        Container(
          width: 120,
          decoration: BoxDecoration(
              color: WeincodeColorsFoundation.warningBgColor,
              borderRadius: BorderRadius.circular(21)),
          child: Center(
              child: Text(
            'Widget A',
            style: Theme.of(context).textTheme.headline6,
          )),
        ),
        const WeincodeSepareted(
          nSepareted: 1,
        ),
        Container(
          width: 120,
          decoration: BoxDecoration(
              color: WeincodeColorsFoundation.succcessBgColor,
              borderRadius: BorderRadius.circular(21)),
          child: Center(
              child: Text(
            'Widget B',
            style: Theme.of(context).textTheme.headline6,
          )),
        ),
      ]),
      Text(
        'nSepareted = 2',
        style: Theme.of(context).textTheme.headline6,
      ),
      Column(children: [
        Container(
          width: 120,
          decoration: BoxDecoration(
              color: WeincodeColorsFoundation.warningBgColor,
              borderRadius: BorderRadius.circular(21)),
          child: Center(
              child: Text(
            'Widget A',
            style: Theme.of(context).textTheme.headline6,
          )),
        ),
        const WeincodeSepareted(
          nSepareted: 2,
        ),
        Container(
          width: 120,
          decoration: BoxDecoration(
              color: WeincodeColorsFoundation.succcessBgColor,
              borderRadius: BorderRadius.circular(21)),
          child: Center(
              child: Text(
            'Widget B',
            style: Theme.of(context).textTheme.headline6,
          )),
        ),
      ]),
    ];

    return ShowComponentTemplate(
        listOfWidgets: examples,
        title: 'Separeted',
        longDescription:
            'Use this widget when you need separated horizontally two widgets with empty space.'
            'The input nSeparated determines the total size of the separation');
  }
}
