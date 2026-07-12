import 'package:flutter/material.dart';

class SubtitleTextWidget extends StatelessWidget {
  const SubtitleTextWidget({
    super.key,
    required this.label,
    required this.fontsize,
    required this.fontStyle,
    required this.fontWeight,
    required this.color,
    required this.textDecoration,
  });
  final String label;
  final double fontsize;
  final FontStyle fontStyle;
  final FontWeight fontWeight;
  final Color color;
  final TextDecoration textDecoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: fontsize,
        fontWeight: fontWeight,
        color: color,
        fontStyle: fontStyle,
        decoration: textDecoration,
      ),
    );
  }
}
