import 'package:flutter/material.dart';

class AtomsPage extends StatelessWidget {
  const AtomsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Atoms ⚛️')),
      body: const Center(child: Text('Átomos')),
    );
  }
}