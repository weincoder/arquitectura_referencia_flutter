import 'package:design_system_weincode/atoms/weincode_image.dart';
import 'package:design_system_weincode/foundations/colors.dart';
import 'package:flutter/material.dart';

class WeincodeCardTile extends StatelessWidget {
  final String url;
  final String title;
  final String id;
  const WeincodeCardTile(
      {Key? key, required this.url, required this.title, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration:
          const BoxDecoration(color: WeincodeColorsFoundation.cardBgColor),
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.only(top: 13.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WeincodeImage(url: url, widthImage: 150, heightImage: 150),
          Column(
            children: [
              Container(
                width: 200,
                padding: const EdgeInsets.fromLTRB(10, 2, 10, 0),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headline4,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(id, style: Theme.of(context).textTheme.headline5),
              ),
            ],
          )
        ],
      ),
    );
  }
}
