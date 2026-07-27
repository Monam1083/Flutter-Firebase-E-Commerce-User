import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:shop_user_application/services/assets_manager.dart';
import 'package:shop_user_application/widgets/title_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            AssetsManager.shoppingBasket,
            width: double.infinity,
            height: size.height * 0.35,
          ),
          TitlesTextWidget(label: "Woops"),
        ],
      ),
    );
  }
}
