import 'package:flutter/material.dart';
class ShowImage extends StatelessWidget {
  
  final String pathImage;
  const ShowImage({Key? key, required this.pathImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: const Key('show-image-container'),
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(pathImage),
    );
  }
}