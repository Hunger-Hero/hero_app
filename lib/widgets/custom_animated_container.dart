import 'package:flutter/material.dart';
import 'package:gdsc_challenge_app/util/contants.dart';

class CustomAnimatedContainer extends StatelessWidget {
  final String animatedCategoryIcon;
  final String animatedCategoryTitle;
  final double animatedCategoryTitleFontsize;
  final Color animatedCategoryTitleColor;
  final Color animationCategoryColor;
  const CustomAnimatedContainer(
      {super.key,
      required this.animatedCategoryIcon,
      required this.animatedCategoryTitle,
      required this.animatedCategoryTitleFontsize,
      required this.animationCategoryColor,
      required this.animatedCategoryTitleColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 40,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(255)),
      child: Container(
        height: 142,
        width: 142,
        decoration: BoxDecoration(
          color: animationCategoryColor,
          borderRadius: BorderRadius.circular(255),
          border: Border.all(
            color: primaryColor,
            width: 3,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 18,
              ),
              Image.asset(
                animatedCategoryIcon,
                height: 50,
                width: 50,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                animatedCategoryTitle,
                style: TextStyle(
                    color: animatedCategoryTitleColor,
                    fontSize: animatedCategoryTitleFontsize,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
