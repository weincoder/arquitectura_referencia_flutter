import 'package:design_system_weincode/atoms/weincode_asset_image.dart';
import 'package:design_system_weincode/foundations/colors.dart';
import 'package:design_system_weincode/foundations/sizes.dart';
import 'package:flutter/material.dart';

class WeincodeCircleAccionableCard extends StatelessWidget {
  final String routeAssetImage;
  final String title;
  final VoidCallback actionCard;
  const WeincodeCircleAccionableCard(
      {Key? key,
      required this.routeAssetImage,
      required this.title,
      required this.actionCard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: actionCard,
        child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: WeincodeColorsFoundation.cardCircularBgColor,
            ),
            width: WeincodeSizesFoundation.sizeCircleAccionableCard,
            height: WeincodeSizesFoundation.sizeCircleAccionableCard,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            WeincodeAssetImage(path: routeAssetImage, widthImage: 100),
              Text(
                title,
                style: Theme.of(context).textTheme.headline6,
              )
            ])));
  }
}
