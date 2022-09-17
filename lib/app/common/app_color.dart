import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 double withSize =0;
 double hightSize =0;
class AppColor {
  static Color borderColor =const Color(0xffF1F2F3);
  static Color headrColor =const Color(0xffF1F2F3);
  static Color scaffolColor = Colors.white;
  static Color textGrey =const Color(0xffd0d0d0);
  static Color textGreenColor =const Color(0xff1FB24B);
  static Color appBarColor =const Color(0xffFBFBFB);
  static Color textRedColor =const Color(0xffF1452A);
  static Color boxGreyColor =const Color(0xffEDEDED);
  static Color praimaryColor ="eb8307".toColor();
  static Color secendColor =Get.theme.accentColor;
}
extension HexColor on String {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  Color toColor() {
    if (this.length >3) {
      final buffer = StringBuffer();
      if (this.length == 6 || this.length == 7) buffer.write('ff');
      buffer.write(this.replaceFirst('#', ''));
      return Color(int.parse(buffer.toString(), radix: 16));
    }
    return Colors.white;
  }

/// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).

}