import 'package:flutter/material.dart';

class WeincodeImage extends StatelessWidget {
  final String url;
  final double widthImage;
  final double heightImage;

  const WeincodeImage(
      {Key? key,
      required this.url,
      required this.widthImage,
      required this.heightImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget weincodeImage = Image.network(
      url,
      width: widthImage,
      height: heightImage,
    );
    return weincodeImage;
  }
}
