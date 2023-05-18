import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_challenge_app/util/contants.dart';
import 'package:gdsc_challenge_app/view/navigation_screen.dart';
import 'package:gdsc_challenge_app/widgets/custom_button.dart';

class FoodReceiverRegistrationView extends StatelessWidget {
  const FoodReceiverRegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: ListView(
            children: [
              const SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  const Text(
                    "NGO Agent Details",
                    style: TextStyle(fontSize: 28, color: primaryColor),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.close,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 65,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Type of donor",
                        suffixIcon: Icon(
                          Icons.arrow_drop_down,
                          size: 40,
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Type of donor",
                        labelText: "Choose Location",
                        suffixIcon: Icon(
                          Icons.location_on_outlined,
                          size: 33,
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Name",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter mobile number",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Email Address",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text("Click to upload business document"),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 56,
                    width: 63,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: primaryColor,
                      width: 1,
                    )),
                    child: Center(
                        child: Image.asset(
                      "assets/images/upload.png",
                      height: 40,
                      width: 40,
                    )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) => const NavigationView(),
                        ),
                      );
                    },
                    child: const CustomButton(buttonTitle: "SUBMIT"),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
