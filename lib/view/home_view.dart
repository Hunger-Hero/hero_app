import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_challenge_app/util/contants.dart';
import 'package:gdsc_challenge_app/view/find_agents.dart';
import 'package:gdsc_challenge_app/widgets/custom_animated_container.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: const Duration(days: 100000), vsync: this)
        ..repeat(reverse: false);

  late final Animation<double> _animation =
      CurvedAnimation(parent: _controller, curve: Curves.linear);
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: ListView(
        children: [
          const SizedBox(
            height: 75,
          ),
          Image.asset(
            "assets/images/logo_or.png",
            height: 150,
            width: 150,
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 26),
            child: Text(
              "User Name",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.58,
              width: MediaQuery.of(context).size.width * 1,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Center(
                child: RotationTransition(
                  alignment: Alignment.center,
                  turns: _animation,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 40,
                          ),
                          const CustomAnimatedContainer(
                            animatedCategoryIcon:
                                "assets/images/donate_food.png",
                            animatedCategoryTitle: "Add Donation",
                            animatedCategoryTitleFontsize: 15,
                            animationCategoryColor: primaryColor,
                            animatedCategoryTitleColor: Colors.white,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                CupertinoPageRoute(
                                  builder: (context) => const FindAgentsView(),
                                ),
                              );
                            },
                            child: const CustomAnimatedContainer(
                              animatedCategoryIcon:
                                  "assets/images/ngo_deliver.png",
                              animatedCategoryTitle: "Find Agent",
                              animatedCategoryTitleFontsize: 15,
                              animationCategoryColor: Colors.white,
                              animatedCategoryTitleColor: primaryColor,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      const CustomAnimatedContainer(
                        animatedCategoryIcon: "assets/images/donate_food.png",
                        animatedCategoryTitle: "Ready Donations",
                        animatedCategoryTitleFontsize: 13.5,
                        animationCategoryColor: primaryColor,
                        animatedCategoryTitleColor: Colors.white,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
