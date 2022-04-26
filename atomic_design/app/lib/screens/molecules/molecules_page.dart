import 'package:app/config/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:design_system_weincode/templates/show_info_template.dart';
import 'package:design_system_weincode/templates/models/showinfo.dart';

class MoleculesPage extends StatelessWidget {
  MoleculesPage({Key? key}) : super(key: key);
  final List<ShowInfoDetail> showInfoDetail = [
    ShowInfoDetail(
        componentDescription: 'render actionable circle card',
        componentTitle: 'Weincode Circle Card',
        componentPage: AppRoutes.moleculeCircle,
        pathImage: 'assets/images/molecules/circleCard.png'),
    ShowInfoDetail(
        componentDescription: 'render a tile card',
        componentTitle: 'Weincode Tile card',
        componentPage: AppRoutes.moleculeCardTile,
        pathImage: 'assets/images/molecules/tileCard.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return ShowInfoTemplate(
      listOfShowInfoDetail: showInfoDetail,
      title: 'Molecules 🧩',

    );
  }
}
