import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop_user_application/widgets/title_text.dart';

class AppNameTextWidget extends StatelessWidget {
  const AppNameTextWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: Duration(seconds: 12),
      baseColor: Colors.purple,
      highlightColor: Colors.red,
      child: TitlesTextWidget(label: "Shop Smart", fontSize: 25),
    );
  }
}
