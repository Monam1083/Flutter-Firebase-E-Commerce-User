import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_user_application/Provider/theme_provider.dart';
import 'package:shop_user_application/consts/theme_data.dart';
import 'package:shop_user_application/root_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            return ThemeProvider();
          },
        ),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            title: 'ShopSmart ',
            theme: Style.themeData(
              isDarkTheme: themeProvider.getisDarktheme,
              context: context,
            ),
            home: const RootScreen(),
          );
        },
      ),
    );
  }
}
