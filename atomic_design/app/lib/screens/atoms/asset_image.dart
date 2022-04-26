import 'package:flutter/material.dart';
import 'package:design_system_weincode/templates/show_component_template.dart';
import 'package:design_system_weincode/atoms/weincode_asset_image.dart';

class AtomAssetImage extends StatelessWidget {
  const AtomAssetImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> examples = [
      Text('You can set the sizes', style: Theme.of(context).textTheme.headline5,),
      Text('This images size is 100', style: Theme.of(context).textTheme.headline6,),
      const WeincodeAssetImage(
        path: 'assets/images/atoms.png',
        widthImage: 100,
      ),
      Text('This images size is 200', style: Theme.of(context).textTheme.headline6,),
      const WeincodeAssetImage(
        path: 'assets/images/atoms.png',
        widthImage: 200,
      ),
      Text('This images size is 300', style: Theme.of(context).textTheme.headline6,),
      const WeincodeAssetImage(
        path: 'assets/images/atoms.png',
        widthImage: 300,
      ),
    ];
    return ShowComponentTemplate(
      listOfWidgets: examples,
      title: 'Asset Images',
      longDescription: 'Use this widget when you need render a image from Assets',
    );
  }
}
