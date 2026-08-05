import 'package:flutter/material.dart';
import 'package:shop_user_application/widgets/subtitle_text.dart';
import 'package:shop_user_application/widgets/title_text.dart';

class CartBottomSheetWidget extends StatelessWidget {
  const CartBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: kBottomNavigationBarHeight + 10,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitlesTextWidget(label: "Total"),
                SubtitleTextWidget(label: "price", color: Colors.blue),
              ],
            ),
            ElevatedButton(onPressed: () {}, child: Text("Check out")),
          ],
        ),
      ),
    );
  }
}
