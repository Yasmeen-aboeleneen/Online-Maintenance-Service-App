import 'package:flutter/material.dart';

 
  const Color kPrimaryColor = Color(0xffffd700);
  const Color kSecondaryColor=Color(0xff022C43);
  const Color kPrimaryTextColor = Color(0xff022C43);
  const Color kSecondaryTextColor = Color(0xff878787);
  const Color kTitleColor = Color(0xff312C66);
  const Color kPlaceholder = Color(0xffa4a4a4);
  const Color kChatTextBGColor = Color(0xff115173);
 


extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
