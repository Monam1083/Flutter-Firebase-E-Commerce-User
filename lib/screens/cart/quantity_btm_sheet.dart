import 'package:flutter/material.dart';
import 'package:shop_user_application/widgets/subtitle_text.dart';

class QuantityBtmSheetWidget extends StatelessWidget {
  const QuantityBtmSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 25,
      itemBuilder: (context, index) {
        return Center(child: SubtitleTextWidget(label: index.toString()));
      },
    );
  }
}
