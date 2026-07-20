import 'package:flutter/material.dart';
import 'package:shop_user_application/screens/cart_screen.dart';
import 'package:shop_user_application/screens/home_screen.dart';
import 'package:shop_user_application/screens/profile_screen.dart';
import 'package:shop_user_application/screens/search_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [HomeScreen(), SearchScreen(), CartScreen(), ProfileScreen()],
      ),
    );
  }
}
