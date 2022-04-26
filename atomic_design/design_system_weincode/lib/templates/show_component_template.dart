import 'package:design_system_weincode/atoms/weincode_separeted.dart';
import 'package:design_system_weincode/foundations/colors.dart';

import 'package:design_system_weincode/tokens/typography.dart';
import 'package:flutter/material.dart';

class ShowComponentTemplate extends StatelessWidget {
  final String title;
  final String longDescription;
  final List<Widget> listOfWidgets;
  const ShowComponentTemplate(
      {Key? key,
      required this.title,
      required this.longDescription,
      required this.listOfWidgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
      child: Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Column(
          children: [
            Container(
                padding: const EdgeInsets.only(top: 21, bottom: 13, left: 21),
                decoration:
                    const BoxDecoration(color: WeincodeColorsFoundation.infoBgColor),
                child: Text(
                  longDescription,
                  style: const TextStyle(
                      color: WeincodeColorsFoundation.colorWhite,
                      fontFamily: WeincodeTypography.familyOpenSans,
                      fontWeight: FontWeight.w800,
                      fontSize: WeincodeTypography.sizeSM),
                )),
            const WeincodeSepareted(
              nSepareted: 0.5,
            ),
            Container(
              height: 500,
              padding: const EdgeInsets.all(21.0),
              child: ListView.separated(
                  itemBuilder: (context, index) => listOfWidgets[index],
                  separatorBuilder: (context, _) =>
                      const WeincodeSepareted(nSepareted: 0.5),
                  itemCount: listOfWidgets.length),
            ),
          ],
        ),
      ),
    );
  }
}
