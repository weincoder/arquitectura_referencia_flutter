import 'package:flutter/material.dart';
import 'package:design_system_weincode/atoms/weincode_separeted.dart';
import 'package:design_system_weincode/foundations/colors.dart';
import 'package:design_system_weincode/tokens/typography.dart';

class FoundationsPage extends StatelessWidget {
  const FoundationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Foundation🎨')),
      body: Container(
        decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
        child: ListView(
          children: [
            Container(
                padding: const EdgeInsets.only(top: 21, bottom: 13, left: 21),
                decoration: const BoxDecoration(
                    color: WeincodeColorsFoundation.infoBgColor),
                child: const Text(
                  'Typography 🔤',
                  style: TextStyle(
                      color: WeincodeColorsFoundation.colorWhite,
                      fontFamily: WeincodeTypography.familyOpenSans,
                      fontWeight: FontWeight.w800,
                      fontSize: WeincodeTypography.sizeLG),
                )),
            Text(
              'Heading1',
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              'Heading2',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              'Heading3',
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              'Heading4',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Heading5',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Heading6',
              style: Theme.of(context).textTheme.headline6,
            ),
            const WeincodeSepareted(
              nSepareted: 0.2,
            ),
            Container(
                padding: const EdgeInsets.only(top: 21, bottom: 13, left: 21),
                decoration: const BoxDecoration(
                    color: WeincodeColorsFoundation.infoBgColor),
                child: const Text(
                  'Colors 🖌',
                  style: TextStyle(
                      color: WeincodeColorsFoundation.colorWhite,
                      fontFamily: WeincodeTypography.familyOpenSans,
                      fontWeight: FontWeight.w800,
                      fontSize: WeincodeTypography.sizeLG),
                )),
            const WeincodeSepareted(
              nSepareted: 0.5,
            ),
            SizedBox(
              height: 500,
              child: GridView.count(
                
                  primary: true,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: [
                    Container(
                      width: 140,
                      height: 80,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: WeincodeColorsFoundation.warningBgColor,
                          borderRadius: BorderRadius.circular(21)),
                      child: Center(
                          child: Text(
                        'Warning',
                        style: Theme.of(context).textTheme.headline6,
                      )),
                    ),
                    Container(
                      width: 140,
                      height: 80,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: WeincodeColorsFoundation.succcessBgColor,
                          borderRadius: BorderRadius.circular(21)),
                      child: Center(
                          child: Text(
                        'Success',
                        style: Theme.of(context).textTheme.headline6,
                      )),
                    ),
                    Container(
                      width: 140,
                      height: 80,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: WeincodeColorsFoundation.cardBgColor,
                          borderRadius: BorderRadius.circular(21)),
                      child: Center(
                          child: Text(
                        'BgGray',
                        style: Theme.of(context).textTheme.headline6,
                      )),
                    ),
                    Container(
                      width: 140,
                      height: 80,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: WeincodeColorsFoundation.primaryColor,
                          borderRadius: BorderRadius.circular(21)),
                      child: const Center(
                          child: Text(
                        'Primary',
                        style: TextStyle(
                            color: WeincodeColorsFoundation.colorWhite,
                            fontFamily: WeincodeTypography.familyOpenSans,
                            fontWeight: FontWeight.w800,
                            fontSize: WeincodeTypography.sizeSL),
                      )),
                    ),
                    Container(
                      width: 140,
                      height: 80,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: WeincodeColorsFoundation.dangerBgColor,
                          borderRadius: BorderRadius.circular(21)),
                      child: Center(
                          child: Text(
                        'Danger',
                        style: Theme.of(context).textTheme.headline6,
                      )),
                    ),
                    Container(
                      width: 140,
                      height: 80,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: WeincodeColorsFoundation.errorBgColor,
                          borderRadius: BorderRadius.circular(21)),
                      child: const Center(
                          child: Text(
                        'Danger',
                        style: TextStyle(
                            color: WeincodeColorsFoundation.colorWhite,
                            fontFamily: WeincodeTypography.familyOpenSans,
                            fontWeight: FontWeight.w800,
                            fontSize: WeincodeTypography.sizeSL),
                      )),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
