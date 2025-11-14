import 'package:flutter/material.dart';

class ColorsManager {
  static Color primaryColor = HexColor.fromHex('#6C5ECF');
  static Color secondaryColor = HexColor.fromHex('#38ABBE');
  static Color alertColor = HexColor.fromHex('#ED6363');
  static Color priceColor = HexColor.fromHex('#2C96F1');
  static Color bgColorOne = HexColor.fromHex('#1F1D2B');
  static Color bgColorTwo = HexColor.fromHex('#2B2937');
  static Color bgColorThree = HexColor.fromHex('#242231');
  static Color primaryTextColor = HexColor.fromHex('#F1F0F2');
  static Color secondaryTextColor = HexColor.fromHex('#999999');
  static Color thirdTextColor = HexColor.fromHex('#504F5E');
  static Color titleTextColor = HexColor.fromHex('#2E2E2E');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString';
    }

    return Color(int.parse(hexColorString, radix: 16));
  }
}