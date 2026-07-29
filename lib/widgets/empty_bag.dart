import 'package:flutter/material.dart';
import 'package:shop_user_application/widgets/subtitle_text.dart';
import 'package:shop_user_application/widgets/title_text.dart';

class EmptyBagWidget extends StatelessWidget {
  const EmptyBagWidget({
    super.key,
    required this.imagepath,
    required this.title,
    required this.subtitle,
    required this.buttontext,
  });
  final String imagepath;
  final String title;
  final String subtitle;
  final String buttontext;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Image.asset(
            imagepath,
            width: double.infinity,
            height: size.height * 0.35,
          ),
          SizedBox(height: 20),
          TitlesTextWidget(label: "Woops", color: Colors.red, fontSize: 20),
          SizedBox(height: 20),
          SubtitleTextWidget(label: title, fontWeight: FontWeight.w600),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SubtitleTextWidget(
              label: subtitle,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: Text(buttontext)),
        ],
      ),
    );
  }
}
