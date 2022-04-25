import 'package:design_system_weincode/foundations/colors.dart';
import 'package:design_system_weincode/foundations/typo.dart';
import 'package:flutter/material.dart';

  final ligthThemeWeincode =  ThemeData(
    primaryColor: WeincodeColorsFoundation.primaryColor,
    primarySwatch: WeincodeColorsFoundation.primaryColorMat ,
    backgroundColor: WeincodeColorsFoundation.bgGray,
  textTheme:   const TextTheme(
    headline1:   TextStyle(
      fontFamily: WeincodeTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w700,
      fontSize: WeincodeTypographyFoundation.fontSizeH1,
      color: WeincodeColorsFoundation.darkTextColors,
    ),
    headline2:  TextStyle(
      fontFamily: WeincodeTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w900,
      fontSize: WeincodeTypographyFoundation.fontSizeH2,
      color: WeincodeColorsFoundation.darkTextColors,
    ),
    headline3: TextStyle(
      fontFamily: WeincodeTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: WeincodeTypographyFoundation.fontSizeH3,
      color: WeincodeColorsFoundation.darkTextColors,
    ),
    headline4: TextStyle(
      fontFamily: WeincodeTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: WeincodeTypographyFoundation.fontSizeH4,
      color: WeincodeColorsFoundation.darkTextColors,
    ),
    headline5: TextStyle(
      fontFamily: WeincodeTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: WeincodeTypographyFoundation.fontSizeH5,
      color: WeincodeColorsFoundation.darkTextColors,
    ),
    headline6: TextStyle(
      fontFamily: WeincodeTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: WeincodeTypographyFoundation.fontSizeH6,
      color: WeincodeColorsFoundation.darkTextColors,
    ),
));

  final darkThemeWeincode =  ThemeData(
    primaryColor: WeincodeColorsFoundation.primaryColor,
    primarySwatch: WeincodeColorsFoundation.primaryColorMat ,
    backgroundColor: WeincodeColorsFoundation.bgDark,
  textTheme:   const TextTheme(
    headline1:   TextStyle(
      fontFamily: WeincodeTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w700,
      fontSize: WeincodeTypographyFoundation.fontSizeH1,
      color: WeincodeColorsFoundation.ligthTextColors,
    ),
    headline2:  TextStyle(
      fontFamily: WeincodeTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w900,
      fontSize: WeincodeTypographyFoundation.fontSizeH2,
      color: WeincodeColorsFoundation.ligthTextColors,
    ),
    headline3: TextStyle(
      fontFamily: WeincodeTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: WeincodeTypographyFoundation.fontSizeH3,
      color: WeincodeColorsFoundation.ligthTextColors,
    ),
    headline4: TextStyle(
      fontFamily: WeincodeTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: WeincodeTypographyFoundation.fontSizeH4,
      color: WeincodeColorsFoundation.darkTextColors,
    ),
    headline5: TextStyle(
      fontFamily: WeincodeTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: WeincodeTypographyFoundation.fontSizeH5,
      color: WeincodeColorsFoundation.darkTextColors,
    ),
    headline6: TextStyle(
      fontFamily: WeincodeTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: WeincodeTypographyFoundation.fontSizeH6,
      color: WeincodeColorsFoundation.ligthTextColors,
    ),
   
));

