import 'package:flutter/material.dart';
import 'package:shop_user_application/screens/cart/cart_widget.dart';
import 'package:shop_user_application/services/assets_manager.dart';
import 'package:shop_user_application/widgets/empty_bag.dart';
import 'package:shop_user_application/widgets/title_text.dart';

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
        : Scaffold(
            appBar: AppBar(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(AssetsManager.shoppingCart),
              ),
              title: TitlesTextWidget(label: "cart Screen"),
            ),
            body: ListView.builder(
              itemBuilder: (context, index) {
                return CartWidget();
              },
            ),
          );
  }
}
