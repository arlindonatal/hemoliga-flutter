import 'package:flutter/material.dart';

class Style {
  static LinearGradient gradient() =>
      LinearGradient(colors: [orange(), primary()]);
  static Color primary() => Color(0xFFFF5E62);
  static Color orange() => Color(0xFFFF9966);
  static Color secondary() => Color(0xFF818181);
  static Color light() => Color(0xFFC0C0C0);
  static Color backgound() => Color(0xFFF6F6F6);
  static Color foreground() => Colors.white;
}

final TextStyle defaultHintTextStyle = TextStyle(
  color: Style.secondary(),
);

final TextStyle defaultLabelStyle = TextStyle(
  color: Style.secondary(),
  fontWeight: FontWeight.bold,
  fontSize: 16,
);

final TextStyle defaultLabelNormalStyle = TextStyle(
  color: Style.secondary(),
  fontSize: 13,
);

final TextStyle defaultTitleStyle = TextStyle(
  color: Style.secondary(),
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);

final TextStyle defaultAppBarTitleStyle = TextStyle(
  fontSize: 26,
  color: Style.secondary(),
  fontWeight: FontWeight.bold,
);
