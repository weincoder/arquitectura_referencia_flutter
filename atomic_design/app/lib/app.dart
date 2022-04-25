import 'package:app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:design_system_weincode/foundations/themes/weincode_themes.dart';
class ShowcaseApp extends StatelessWidget {
  const ShowcaseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ligthThemeWeincode,
      onGenerateRoute: (settings){
        switch (settings.name){
          default:
            return MaterialPageRoute(builder: (currentContext)=> const HomePage());
        }
      },
    );
  }
}