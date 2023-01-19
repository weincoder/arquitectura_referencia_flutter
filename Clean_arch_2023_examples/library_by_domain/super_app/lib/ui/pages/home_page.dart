import 'package:design_system_weincode/atoms/weincode_separeted.dart';
import 'package:flutter/material.dart';

import '../../config/routes/app_routes.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CA using separeted folders 🧐',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          const WeincodeSepareted(nSepareted: 0.5),
          SizedBox(
            height: 50.0,
            child: ElevatedButton(
                child: const Text(
                  'Show daily Data 🛰',
                  style: TextStyle(fontSize: 21),
                ),
                onPressed: () => Navigator.of(context).pushNamed(AppRoutes.astronomyDailyData)),
          ),
          const WeincodeSepareted(nSepareted: 0.5),
          SizedBox(
            height: 50.0,
            child: ElevatedButton(
                child: const Text('Show Pokemon Detail 🐡',
                    style: TextStyle(fontSize: 21)),
                onPressed: () => Navigator.of(context).pushNamed(AppRoutes.pokemon)
          )),
          const WeincodeSepareted(nSepareted: 0.5),
          SizedBox(
            height: 50.0,
            child: ElevatedButton(
                child: const Text('Show Album Detail 💿',
                    style: TextStyle(fontSize: 21)),
                onPressed: () => Navigator.of(context).pushNamed(AppRoutes.album)
          )),
          const WeincodeSepareted(nSepareted: 0.5),
        ]),
      ),
    );
  }
}
