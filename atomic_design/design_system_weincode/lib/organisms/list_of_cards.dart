import 'package:design_system_weincode/foundations/sizes.dart';
import 'package:design_system_weincode/foundations/spacing.dart';
import 'package:design_system_weincode/molecules/card_tile.dart';
import 'package:flutter/material.dart';

class WeincodeListOfCards extends StatelessWidget {
  final List<WeincodeCardTile> listCards;
  const WeincodeListOfCards({Key? key, required this.listCards})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: WeincodeSizesFoundation.sizeCard,
      child: ListView.separated(
        itemBuilder: (contex, index) => listCards[index],
        itemCount: listCards.length,
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: WeincodeSpacingFoundation.spaceBetweenCards),
      ),
    );
  }
}
