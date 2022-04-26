import 'package:design_system_weincode/foundations/sizes.dart';
import 'package:flutter/material.dart';

class WeincodeSepareted extends StatelessWidget {
  final double nSepareted;
  const WeincodeSepareted({Key? key, required this.nSepareted}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: nSepareted*WeincodeSizesFoundation.baseSepareted,
    );
  }
}
