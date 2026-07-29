import 'package:flutter/material.dart';
import 'package:shop_user_application/services/assets_manager.dart';
import 'package:shop_user_application/widgets/subtitle_text.dart';
import 'package:shop_user_application/widgets/title_text.dart';

class EmptyBagWidget extends StatelessWidget {
  const EmptyBagWidget({
    super.key,
    required this.imagepath,
    required this.title,
    required this.subtitle,
  });
  final String imagepath;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Image.asset(
            AssetsManager.shoppingBasket,
            width: double.infinity,
            height: size.height * 0.35,
          ),
          SizedBox(height: 20),
          TitlesTextWidget(label: "Woops", color: Colors.red, fontSize: 20),
          SizedBox(height: 20),
          SubtitleTextWidget(
            label: "your cart is empty",
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SubtitleTextWidget(
              label: "looks like your cart is empty add something ",
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: Text("shop Now")),
        ],
      ),
    );
  }
}
