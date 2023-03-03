import 'package:flutter/material.dart';
import 'package:responsive_design/config/break_points.dart';
import 'package:responsive_design/pages/home/home_body_large.dart';
import 'package:responsive_design/pages/home/home_body_small.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    Widget returnedWidget = Container();
    return LayoutBuilder(
      builder: (contex, constraints) {
        if (constraints.maxWidth <= BreakPoints.medium){
          returnedWidget = const HomeBodySmall();
        } else{
          returnedWidget = const HomeBodyLarge();
        }
      return returnedWidget;
      },
    );
  }
}
