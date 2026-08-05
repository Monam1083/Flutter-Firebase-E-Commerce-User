import 'package:flutter/material.dart';
import 'package:shop_user_application/widgets/subtitle_text.dart';
import 'package:shop_user_application/widgets/title_text.dart';

class CartBottomSheetWidget extends StatelessWidget {
  const CartBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Column(
            children: [
              TitlesTextWidget(label: "Total"),
              SubtitleTextWidget(label: "price", color: Colors.blue),
            ],
          ),
        ],
      ),
    );
  }
}
