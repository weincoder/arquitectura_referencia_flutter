import 'package:app/config/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:design_system_weincode/templates/show_info_template.dart';
import 'package:design_system_weincode/templates/models/showinfo.dart';

class TemplatesPage extends StatelessWidget {
  TemplatesPage({Key? key}) : super(key: key);
  final List<ShowInfoDetail> showInfoDetail = [
    ShowInfoDetail(
        componentDescription:
            'Show info about the components',
        componentTitle: 'Component Info',
        componentPage: AppRoutes.showComponent,
        pathImage: 'assets/images/templates/component.png'),
    ShowInfoDetail(
        componentDescription: 'Show some info',
        componentTitle: 'Show Info Page',
        componentPage: AppRoutes.showInfo,
        pathImage: 'assets/images/templates/info.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return ShowInfoTemplate(
      listOfShowInfoDetail: showInfoDetail,
      title: 'Organisms 🦠',
    );
  }
}
