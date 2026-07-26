import 'package:flutter/material.dart';
import 'package:shop_user_application/widgets/title_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets\images\bag\shopping_cart.png"),
        ),
        title: Text("Profile Screen"),
      ),
      body: Column(
        children: [
          Visibility(
            visible: false,
            child: Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: TitleText(
                label: "Please login to have unlimited access",
                fontsize: 10,
                color: Colors.black,
                maxlines: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
