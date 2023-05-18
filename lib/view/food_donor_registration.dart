import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_challenge_app/util/contants.dart';
import 'package:gdsc_challenge_app/view/navigation_screen.dart';
import 'package:gdsc_challenge_app/widgets/custom_button.dart';

class FoodDonorRegistrationView extends StatefulWidget {
  const FoodDonorRegistrationView({super.key});

  @override
  State<FoodDonorRegistrationView> createState() =>
      _FoodDonorRegistrationViewState();
}

class _FoodDonorRegistrationViewState extends State<FoodDonorRegistrationView> {
  final _foodDonorRegistrationFormKey = GlobalKey<FormState>();
  final _typeOfDonorController = TextEditingController();
  final _donorLocationController = TextEditingController();
  final _donorNameController = TextEditingController();
  final _donorMobileNumberController = TextEditingController();
  final _donorEmailController = TextEditingController();
  final _donorPasswordController = TextEditingController();
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: ListView(
            children: [
              const SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  const Text(
                    "Donate Food Details",
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
                  key: _foodDonorRegistrationFormKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Type of donor",
                            suffixIcon: Icon(
                              Icons.arrow_drop_down,
                              size: 40,
                            )),
                        controller: _typeOfDonorController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "This field is required";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _donorLocationController,
                        decoration: const InputDecoration(
                            labelText: "Choose Location",
                            suffixIcon: Icon(
                              Icons.location_on_outlined,
                              size: 33,
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Location is required";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _donorNameController,
                        decoration: const InputDecoration(
                          hintText: "Enter Name",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Name is required";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _donorMobileNumberController,
                        decoration: const InputDecoration(
                          hintText: "Enter mobile number",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Mobile number is required";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _donorEmailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: "Enter Email Address",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Email is required";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _donorPasswordController,
                        decoration: const InputDecoration(
                          hintText: "Enter Password",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password id required";
                          } else if (value.length < 8) {
                            return "Password must be longer than 8 characters";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text("Click to upload ID/ business document"),
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
                        onTap: () async {
                          bool isValid = _foodDonorRegistrationFormKey
                              .currentState!
                              .validate();

                          if (isValid) {
                            Navigator.of(context).push(
                              CupertinoPageRoute(
                                builder: (context) => const NavigationView(),
                              ),
                            );
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                });

                            Navigator.of(context).pop();
                          } else {}
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  actions: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20),
                                      child: Row(
                                        children: [
                                          const SizedBox(
                                            width: 30,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              height: 35,
                                              width: 115,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                    color: primaryColor,
                                                  )),
                                              child: const Center(
                                                child: Text(
                                                  "Decline",
                                                  style: TextStyle(
                                                      color: primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                CupertinoPageRoute(
                                                  builder: (context) =>
                                                      const NavigationView(),
                                                ),
                                              );
                                            },
                                            child: Container(
                                              height: 35,
                                              width: 115,
                                              decoration: BoxDecoration(
                                                  color: primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: const Center(
                                                child: Text(
                                                  "Accept",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                  title: Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/terms.png",
                                        width: 57,
                                        height: 67,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "Terms and Conditions",
                                        style: TextStyle(
                                            color: primaryColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  content: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(217, 217, 217, 1),
                                    ),
                                    child: Column(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.all(30.0),
                                          child: Text(
                                            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. ",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              checkColor: primaryColor,
                                              value: value,
                                              side: const BorderSide(
                                                  color: primaryColor),
                                              onChanged: (value) {
                                                setState(() {
                                                  value = value;
                                                });
                                              },
                                            ),
                                            const Text(
                                              "I agree with the Terms and Conditions",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: primaryColor),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              checkColor: primaryColor,
                                              side: const BorderSide(
                                                color: primaryColor,
                                              ),
                                              value: value,
                                              onChanged: (value) {
                                                setState(() {
                                                  value = value;
                                                });
                                              },
                                            ),
                                            const Text(
                                              "I agree with the Privacy Policy",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: primaryColor),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: CustomButton(buttonTitle: "SUBMIT"),
                        ),
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
