import 'package:design_system_weincode/atoms/weincode_asset_image.dart';
import 'package:design_system_weincode/atoms/weincode_separeted.dart';
import 'package:flutter/material.dart';

class SuccessTrx extends StatelessWidget {
  const SuccessTrx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Success Transaction',
      )),
      body: ListView(
        children: [
          const WeincodeSepareted(nSepareted: 0.2),
          Center(
              child: Text(
            'We have happy announcement🥳',
            style: Theme.of(context).textTheme.headline5,
          )),
          const WeincodeSepareted(nSepareted: 0.2),
          const Center(
              child: WeincodeAssetImage(
                  path: 'assets/images/success.png', widthImage: 200)),
          const WeincodeSepareted(nSepareted: 0.2),
          Center(
              child: Text(
            'your transaction was completed successfully',
            style: Theme.of(context).textTheme.headline5,
          )),
        ],
      ),
    );
  }
}
