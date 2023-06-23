import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray5001 = fromHex('#fafafa');

  static Color gray90059 = fromHex('#59121212');

  static Color blueGray50 = fromHex('#eeeff4');

  static Color red500 = fromHex('#f83a3a');

  static Color gray80001 = fromHex('#454141');

  static Color gray50 = fromHex('#faf9ff');

  static Color green400 = fromHex('#5db074');

  static Color black90001 = fromHex('#040402');

  static Color black900 = fromHex('#000000');

  static Color black90060 = fromHex('#60000000');

  static Color gray50001 = fromHex('#a6a7ab');

  static Color gray20001 = fromHex('#eaeaea');

  static Color gray90060 = fromHex('#60121212');

  static Color black90002 = fromHex('#070604');

  static Color gray600 = fromHex('#7b7b7b');

  static Color gray90002 = fromHex('#001229');

  static Color gray700 = fromHex('#5b5b5b');

  static Color blueGray200 = fromHex('#bdc5cd');

  static Color gray400 = fromHex('#cacaca');

  static Color gray60001 = fromHex('#7f7f7f');

  static Color gray500 = fromHex('#909090');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color blueGray400 = fromHex('#888888');

  static Color indigo50D8 = fromHex('#d8e5e9ef');

  static Color gray800 = fromHex('#3e3e3e');

  static Color indigo50 = fromHex('#e5e9ef');

  static Color blueGray600 = fromHex('#545589');

  static Color gray900 = fromHex('#161826');

  static Color blueGray500 = fromHex('#737297');

  static Color gray400D8 = fromHex('#d8c4c4c4');

  static Color gray90001 = fromHex('#001329');

  static Color blue600 = fromHex('#2e83e4');

  static Color orange800 = fromHex('#cc690d');

  static Color gray200 = fromHex('#e7e7e7');

  static Color gray300 = fromHex('#e0e0e0');

  static Color gray100 = fromHex('#f5f6f6');

  static Color indigo400 = fromHex('#4e55d7');

  static Color indigoA700 = fromHex('#254fe6');

  static Color gray10001 = fromHex('#f6f6f6');

  static Color whiteA700 = fromHex('#ffffff');

  static Color black90059 = fromHex('#59000000');

  static Color gray70001 = fromHex('#666666');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
