import 'package:flutter/material.dart';

/// [ScreenText] Modifiable size and color text widget
class ScreenText extends StatelessWidget {
  /// [fontSize] How the font size will be,
  /// If null then [defaultFontSize] is used
  final double fontSize;

  /// [color] If null, default color is used
  final Color color;

  /// [text] Painted text on screen
  final String text;

  /// default size of text if it's null
  static const double defaultFontSize = 20;

  /// Creates a screen text
  const ScreenText({
    super.key,
    this.fontSize = defaultFontSize,
    this.color = Colors.blueAccent,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}
