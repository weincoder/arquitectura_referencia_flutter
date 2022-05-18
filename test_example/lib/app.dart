import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'package:design_system_weincode/foundations/themes/weincode_themes.dart';
class TestAppExample extends StatelessWidget {
  const TestAppExample({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ligthThemeWeincode,
      home: const HomePage(title: '🧪 Test App '),
    );
  }
}
