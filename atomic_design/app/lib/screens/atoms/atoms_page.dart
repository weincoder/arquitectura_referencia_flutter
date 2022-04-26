import 'package:app/config/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:design_system_weincode/templates/show_info_template.dart';
import 'package:design_system_weincode/templates/models/showinfo.dart';

class AtomsPage extends StatelessWidget {
  AtomsPage({Key? key}) : super(key: key);
  final List<ShowInfoDetail> showInfoDetail = [

    ShowInfoDetail(
        componentDescription: 'render a image from Assets',
        componentTitle: 'Weincode AssetImage',
        componentPage: AppRoutes.assetImage,
        pathImage: 'assets/images/atoms/imageAsset.png'),
    ShowInfoDetail(
        componentDescription: 'render a image from url',
        componentTitle: 'Weincode Image',
        componentPage: AppRoutes.image,
        pathImage: 'assets/images/atoms/image.png'),
    ShowInfoDetail(
        componentDescription: 'Create a empty space',
        componentTitle: 'Weincode Separeted',
        componentPage: AppRoutes.separeted,
        pathImage: 'assets/images/atoms/separation.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return ShowInfoTemplate(
      listOfShowInfoDetail: showInfoDetail,
      title: 'Atoms⚛️',
    );
  }
}
