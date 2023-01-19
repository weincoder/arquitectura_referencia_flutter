import 'package:design_system_weincode/atoms/weincode_image.dart';
import 'package:design_system_weincode/atoms/weincode_separeted.dart';
import 'package:flutter/material.dart';

import '../../domain/models/astronomy_daily_data/astronomy_daily_data.dart';

class ShowDailyDataPage extends StatelessWidget {
  final Future<AstronomyDailyData> astronomyDailyData;
  const ShowDailyDataPage({Key? key, required this.astronomyDailyData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Astronomy daily Data 🪐')),
        body: FutureBuilder<AstronomyDailyData>(
          future: astronomyDailyData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              AstronomyDailyData resultAstronmyData = snapshot.data!;
              return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(
                    children: [
                      const WeincodeSepareted(nSepareted: 0.5),
                      Text(
                        resultAstronmyData.title!,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const WeincodeSepareted(nSepareted: 0.2),
                      WeincodeImage(
                          url: resultAstronmyData.url!,
                          widthImage: 300,
                          heightImage: 300),
                      const WeincodeSepareted(nSepareted: 0.2),
                      Text(
                        resultAstronmyData.explanation!,
                      ),
                    ],
                  ));
            } else if (snapshot.hasError) {
              return Text('${snapshot.hasError}');
            }
            return const Center(
                child: SizedBox(
                    width: 20, height: 20, child: CircularProgressIndicator()));
          },
        ));
  }
}
