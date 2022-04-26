import 'package:app/config/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:design_system_weincode/templates/show_component_template.dart';

import 'package:design_system_weincode/templates/show_info_template.dart';
import 'package:design_system_weincode/templates/models/showinfo.dart';

class ShowInfoPage extends StatelessWidget {
  const ShowInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ShowInfoDetail> _listOfDetail = [
      ShowInfoDetail(
          componentDescription:
              'Alien component',
          componentTitle: 'Alien',
          componentPage: AppRoutes.home,
          pathImage: 'assets/images/alien.png'),
      ShowInfoDetail(
          componentDescription: 'Metroid component',
          componentTitle: 'Metroid',
          componentPage: AppRoutes.home,
          pathImage: 'assets/images/metroid.png'),
    ];

    final List<Widget> examples = [
      SizedBox(
        height: 800,
        child: ShowInfoTemplate(
          title: 'Example page',
          listOfShowInfoDetail: _listOfDetail,
        ),
      )
    ];
    return ShowComponentTemplate(
      listOfWidgets: examples,
      title: 'Show info',
      longDescription:
          'Use this widget when you need showthe info about '
          'the components in the showcase',
    );
  }
}
