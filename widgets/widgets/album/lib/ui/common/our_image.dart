import 'package:flutter/material.dart';

class OurImage extends StatelessWidget {
  final String url;
  final double widthImage;
  final double heightImage;

  const OurImage(
      {Key? key, required this.url, required this.heightImage, required this.widthImage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget element = Image.network(
      url,
      width: widthImage,
      height: heightImage,
    );
    return element;
  }
}