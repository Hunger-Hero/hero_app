import 'package:flutter/material.dart';
import 'package:gdsc_challenge_app/util/contants.dart';

class UserCategoryOptions extends StatelessWidget {
  final Color categoryColor;
  final String categoryIcon;
  final String categoryTitle;
  final String categoryDescription;
  const UserCategoryOptions({
    super.key,
    required this.categoryColor,
    required this.categoryIcon,
    required this.categoryTitle,
    required this.categoryDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 115,
          width: 115,
          decoration: BoxDecoration(
            color: categoryColor,
            borderRadius: BorderRadius.circular(255),
            border: Border.all(
              color: primaryColor,
              width: 3,
            ),
          ),
          child: Center(
            child: Image.asset(
              categoryIcon,
              height: 50,
              width: 50,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          categoryTitle,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 18,
        ),
        Text(
          categoryDescription,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
