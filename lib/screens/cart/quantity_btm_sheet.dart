import 'package:flutter/material.dart';
import 'package:shop_user_application/widgets/subtitle_text.dart';

class QuantityBtmSheetWidget extends StatelessWidget {
  const QuantityBtmSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
          child: Container(
            height: 6,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey,
            ),
          ),
        ),
        SizedBox(
          height: 20,
          child: Expanded(
            child: ListView.builder(
              itemCount: 25,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SubtitleTextWidget(label: " ${index + 1}"),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
