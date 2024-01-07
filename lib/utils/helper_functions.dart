import 'dart:convert';

class HelperFunction {
  static String? utf8TextParsing(String? val) {
    if (val == null) return "";
    try {
      String decodedText = utf8.decode(val.codeUnits, allowMalformed: true);
      return decodedText;
    } catch (e) {
      return val;
    }
  }
}
