import 'package:flutter/material.dart';
import 'package:gdsc_challenge_app/view/user_options.dart';
import 'package:gdsc_challenge_app/widgets/custom_button.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingView> {
  late bool isLoading;
  @override
  void initState() {
    isLoading = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/onboard.png",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration:
                const BoxDecoration(color: Color.fromRGBO(14, 23, 39, 0.6)),
            child: Column(
              children: [
                const SizedBox(
                  height: 500,
                ),
                const Text(
                  "Welcome \n to HungerHero",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Text(
                  "Donate today and save life",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(252, 252, 252, 70 / 100)),
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () async {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const UserOptionsView(),
                      ),
                    );
                  },
                  child: const CustomButton(
                    buttonTitle: 'GET STARTED',
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
