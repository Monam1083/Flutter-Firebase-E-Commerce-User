import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
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
  late List<Widget> screen;
  int currentscreen = 0;
  late PageController controller;
  @override
  void initState() {
    super.initState();
    screen = [HomeScreen(), SearchScreen(), CartScreen(), ProfileScreen()];
    controller = PageController(initialPage: currentscreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(controller: controller, children: screen),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            currentscreen = index;
          });
          controller.jumpToPage(currentscreen);
        },
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.home),
            icon: Icon(IconlyLight.home),
            label: "home",
          ),
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.search),
            icon: Icon(IconlyLight.search),
            label: "Search",
          ),
        ],
      ),
    );
  }
}
