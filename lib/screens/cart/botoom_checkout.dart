import 'package:flutter/material.dart';
import 'package:shop_user_application/widgets/title_text.dart';

class CartBottomSheetWidget extends StatelessWidget {
  const CartBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [TitlesTextWidget(label: "Total")]);
  }
}
