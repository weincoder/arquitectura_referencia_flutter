//  ..................................................
//  .██████╗.██████╗.██╗......██████╗.██████╗.███████╗
//  ██╔════╝██╔═══██╗██║.....██╔═══██╗██╔══██╗██╔════╝
//  ██║.....██║...██║██║.....██║...██║██████╔╝███████╗
//  ██║.....██║...██║██║.....██║...██║██╔══██╗╚════██║
//  ╚██████╗╚██████╔╝███████╗╚██████╔╝██║..██║███████║
//  .╚═════╝.╚═════╝.╚══════╝.╚═════╝.╚═╝..╚═╝╚══════╝
//  ..................................................

import 'dart:ui' show Color;

import 'package:design_system_weincode/tokens/colors.dart';
import 'package:flutter/material.dart';

class WeincodeColorsFoundation {
  WeincodeColorsFoundation._();

  static const Color bgGray = WeincodeColors.bgLigthGray;
  static const Color bgDark = WeincodeColors.scale06;
  static const Color colorButtonPrimary = WeincodeColors.brandPrimary;
  static const Color primaryColor = WeincodeColors.brandPrimary;
  static const MaterialColor primaryColorMat = WeincodeColors.brandPrimaryMat;
  static const Color colorButtonSecondary = WeincodeColors.brandSecondary;
  static const Color darkTextColors = WeincodeColors.scale06;
  static const Color ligthTextColors = WeincodeColors.scale02;
  static const Color bodyColor = WeincodeColors.scale04;
  static const Color bodyTextColor = WeincodeColors.scale04;
  static const Color cardBgColor = WeincodeColors.scale02;
  static const Color cardCircularBgColor = WeincodeColors.statusInfo;
}
