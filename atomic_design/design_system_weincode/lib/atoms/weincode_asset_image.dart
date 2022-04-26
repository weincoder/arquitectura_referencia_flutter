import 'package:flutter/material.dart';

class WeincodeAssetImage extends StatelessWidget {
  final String path;
  final double widthImage;


  const WeincodeAssetImage(
      {Key? key,
      required this.path,
      required this.widthImage,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget weincodeImage = Image.asset(
      path,
      width: widthImage,
      height: widthImage,
    );
    return weincodeImage;
  }
}
