import 'package:flutter/material.dart';
import 'package:shop_user_application/services/assets_manager.dart';
import 'package:shop_user_application/widgets/title_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset(AssetsManager.shoppingCart),
        ),
        title: TitlesTextWidget(label: "Search Product"),
      ),
      body: Column(children: [TextField()]),
    );
  }
}
