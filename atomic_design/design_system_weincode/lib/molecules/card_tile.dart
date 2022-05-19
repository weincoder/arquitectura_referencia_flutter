import 'package:design_system_weincode/atoms/weincode_asset_image.dart';
import 'package:design_system_weincode/foundations/colors.dart';
import 'package:flutter/material.dart';

class WeincodeCardTile extends StatelessWidget {
  final String path;
  final String title;
  final String id;
  final double? height;
  const WeincodeCardTile(
      {Key? key, required this.path, required this.title, required this.id, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 180,
      decoration: BoxDecoration(
          color: WeincodeColorsFoundation.cardBgColor,
          borderRadius: BorderRadius.circular(21)),
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.only(top: 21.0, left: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WeincodeAssetImage(path: path, widthImage: 120),
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 200,
                  padding: const EdgeInsets.fromLTRB(10, 2, 10, 0),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 200,
                  padding: const EdgeInsets.only(left: 34, top: 21),
                  child: Text(id, style: Theme.of(context).textTheme.headline6),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
