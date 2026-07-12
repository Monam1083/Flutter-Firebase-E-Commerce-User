import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_user_application/Provider/theme_provider.dart';
import 'package:shop_user_application/widgets/subtitle_text.dart';
//import 'package:shop_user_application/consts/app_color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SubtitleTextWidget(
            label: "hello",
            fontsize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            color: Colors.amber,
            textDecoration: TextDecoration.none,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Hello world")),
          SwitchListTile(
            title: Text(
              themeProvider.getisDarktheme ? "Dark Mode" : "Light Mode",
            ),
            value: themeProvider.getisDarktheme,
            onChanged: (value) {
              themeProvider.setDarkTheme(value);
            },
          ),
        ],
      ),
    );
  }
}
