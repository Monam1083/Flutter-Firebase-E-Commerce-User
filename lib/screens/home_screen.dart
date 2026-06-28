import 'package:flutter/material.dart';
import 'package:shop_user_application/consts/app_color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightscafoldcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hello world",
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Hello world")),
        ],
      ),
    );
  }
}
