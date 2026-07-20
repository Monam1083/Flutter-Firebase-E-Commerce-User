import 'package:flutter/material.dart';
import 'package:shop_user_application/widgets/title_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TitleText(
          label: "Cart Screen",
          fontsize: 10,
          color: Colors.amber,
          maxlines: 1,
        ),
      ),
    );
  }
}
