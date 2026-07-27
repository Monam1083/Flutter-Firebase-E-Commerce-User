import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:shop_user_application/services/assets_manager.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [Image.asset(AssetsManager.shoppingBasket)]),
    );
  }
}
