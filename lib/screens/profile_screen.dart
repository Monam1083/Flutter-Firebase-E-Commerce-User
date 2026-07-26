import 'package:flutter/material.dart';
import 'package:shop_user_application/widgets/subtitle_text.dart';
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
          Visibility(
            visible: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).cardColor,
                      border: Border.all(
                        color: Theme.of(context).colorScheme.surface,
                        width: 3,
                      ),
                      image: DecorationImage(image: NetworkImage("url")),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleText(
                        label: "Monam Majeed",
                        fontsize: 10,
                        color: Colors.black,
                        maxlines: 1,
                      ),
                      SizedBox(width: 10),
                      SubtitleTextWidget(
                        label: "Monammajeed@gmail.com",
                        fontsize: 7,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        textDecoration: TextDecoration.none,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 14),
          Padding(padding: EdgeInsetsGeometry.all(8)),
        ],
      ),
    );
  }
}
