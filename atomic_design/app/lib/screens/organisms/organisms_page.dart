import 'package:app/config/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:design_system_weincode/templates/show_info_template.dart';
import 'package:design_system_weincode/templates/models/showinfo.dart';

class OrganismsPage extends StatelessWidget {
  OrganismsPage({Key? key}) : super(key: key);
  final List<ShowInfoDetail> showInfoDetail = [
    ShowInfoDetail(
        componentDescription: 'render a list of cards',
        componentTitle: 'List of Cards',
        componentPage: AppRoutes.listOfCards,
        pathImage: 'assets/images/organisms/listOfCards.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return ShowInfoTemplate(
      listOfShowInfoDetail: showInfoDetail,
      title: 'Organisms 🦠',

    );
  }
}
