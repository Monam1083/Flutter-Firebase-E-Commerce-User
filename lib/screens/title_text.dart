import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.label,
    required this.fontsize,
    required this.color,
    required this.maxlines,
  });
  final String label;
  final double fontsize;
  final Color? color;
  final int? maxlines;
  @override
  Widget build(BuildContext context) {
    return Text("");
  }
}
