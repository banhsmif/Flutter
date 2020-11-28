import 'dart:ui';

class Utility {
  Utility();
  Color getColor(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    int color = int.parse(hexColor, radix: 16);
    return Color(color);
  }
}
