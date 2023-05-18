import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_challenge_app/util/contants.dart';
import 'package:gdsc_challenge_app/view/food_donor_registration.dart';
import 'package:gdsc_challenge_app/view/food_reciever_registration.dart';
import 'package:gdsc_challenge_app/view/navigation_screen.dart';
import 'package:gdsc_challenge_app/widgets/user_category_options.dart';

class UserOptionsView extends StatelessWidget {
  const UserOptionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 110,
          ),
          const Text(
            "APP LOGO",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              color: primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          const Text(
            "Want to donate food?",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28),
          ),
          const Text(
            "Select any one",
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(
                        builder: (context) => const FoodDonorRegistrationView(),
                      ),
                    );
                  },
                  child: const UserCategoryOptions(
                    categoryColor: primaryColor,
                    categoryDescription: ' Donate food \n for the needy',
                    categoryIcon: 'assets/images/donate_food.png',
                    categoryTitle: 'Donate',
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) =>
                            const FoodReceiverRegistrationView()));
                  },
                  child: const UserCategoryOptions(
                    categoryColor: Colors.white,
                    categoryDescription:
                        '             Food \n Pickup and Delivery',
                    categoryIcon: 'assets/images/ngo_deliver.png',
                    categoryTitle: 'NGO Agent',
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 135,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) => NavigationView(),
                ),
              );
            },
            child: const Text(
              "Skip",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
