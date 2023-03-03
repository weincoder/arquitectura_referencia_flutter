import "package:flutter/material.dart";
import "package:responsive_design/pages/home/home_responsive.dart";

class AppToExplainResponsiveDesign extends StatelessWidget {
  const AppToExplainResponsiveDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomePage(),
    );
  }
}
