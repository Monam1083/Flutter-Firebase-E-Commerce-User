import 'package:flutter/material.dart';
import 'package:shop_user_application/consts/app_color.dart';

class Style {
  static ThemeData themeData({
    required bool isDarkTheme,
    required BuildContext context,
  }) {
    return ThemeData(
      scaffoldBackgroundColor: isDarkTheme
          ? AppColor.darkscafoldcolor
          : AppColor.lightscafoldcolor,
      cardColor: isDarkTheme
          ? const Color.fromARGB(255, 13, 6, 37)
          : AppColor.lightcardcolor,
    );
  }
}
