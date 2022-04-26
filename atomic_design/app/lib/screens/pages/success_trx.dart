import 'package:design_system_weincode/pages/success_trx.dart';


import 'package:flutter/material.dart';
import 'package:design_system_weincode/templates/show_component_template.dart';
import 'package:design_system_weincode/atoms/weincode_asset_image.dart';

class SuccessTrxPage extends StatelessWidget {
  const SuccessTrxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<Widget> examples = [
      const SizedBox(
        height: 800,
        child:SuccessTrx(),
      )
    ];
    return ShowComponentTemplate(
      listOfWidgets: examples,
      title: 'Success Trx',
      longDescription: 'Use this widget when you need show a success trx',
    );
  }
}
