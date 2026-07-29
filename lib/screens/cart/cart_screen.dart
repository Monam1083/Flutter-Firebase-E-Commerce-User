import 'package:flutter/material.dart';
import 'package:shop_user_application/services/assets_manager.dart';
import 'package:shop_user_application/widgets/empty_bag.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  final bool isempty = false;
  @override
  Widget build(BuildContext context) {
    return isempty
        ? Scaffold(
            body: EmptyBagWidget(
              imagepath: AssetsManager.shoppingBasket,
              title: "your cart is empty",
              subtitle: "Looks like your cart is empty try something to add",
              buttontext: "shop Now",
            ),
          )
        : Scaffold();
  }
}
