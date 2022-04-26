import 'package:flutter/material.dart';

import 'package:design_system_weincode/templates/show_component_template.dart';
import 'package:design_system_weincode/atoms/weincode_image.dart';

class AtomsImage extends StatelessWidget {
  const AtomsImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> examples = [
      Text(
        'You can set the sizes',
        style: Theme.of(context).textTheme.headline5,
      ),
      Text(
        'This images size is 100',
        style: Theme.of(context).textTheme.headline6,
      ),
      const WeincodeImage(
        url: 'https://holatelcel.com/wp-content/uploads/2020/09/cheems-memes-9.jpg',
        heightImage: 100,
        widthImage: 100,
      ),
      Text(
        'This images size is 200',
        style: Theme.of(context).textTheme.headline6,
      ),
      const WeincodeImage(
        url: 'https://holatelcel.com/wp-content/uploads/2020/09/cheems-memes-9.jpg',
        heightImage: 200,
        widthImage: 200,
      ),
      Text(
        'This images size is 300',
        style: Theme.of(context).textTheme.headline6,
      ),
      const WeincodeImage(
        url: 'https://holatelcel.com/wp-content/uploads/2020/09/cheems-memes-9.jpg',
        heightImage: 300,
        widthImage: 300,
      ),
    ];

    return ShowComponentTemplate(
      listOfWidgets: examples,
      title: 'Images',
      longDescription:
          'Use this widget when you need render a image from internet',
    );
  }
}
