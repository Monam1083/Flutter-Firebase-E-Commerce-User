import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_user_application/Provider/theme_provider.dart';
import 'package:shop_user_application/screens/home_screen.dart';

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
      child: MaterialApp(
        title: 'ShopSmart ',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.red,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
