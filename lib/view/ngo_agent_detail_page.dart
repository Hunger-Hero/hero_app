import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_challenge_app/util/contants.dart';

class NGOAgentDetailView extends StatelessWidget {
  const NGOAgentDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.purple,
            iconTheme: const IconThemeData(color: Colors.white),
            expandedHeight: 220,
            flexibleSpace: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/6169002/pexels-photo-6169002.jpeg?auto=compress&cs=tinysrgb&w=1600"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  color: Colors.black.withOpacity(0.5),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Zizi Foundation",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.my_location,
                        color: primaryColor,
                      ),
                      Text("Accra-Ghana"),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xFFFFC107),
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xFFFFC107),
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xFFFFC107),
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xFFFFC107),
                      ),
                      Icon(
                        Icons.star_border_outlined,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("4.3 Rating")
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Status",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(255),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                color: primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Text("Zizi foundation is currently taking order"),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Contact us",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Card(
                            child: ListTile(
                              title: Text("Mobile Phone : 0540925575"),
                              leading: Icon(
                                Icons.phone,
                                color: primaryColor,
                              ),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              title: Text("Instagram : 0540925575"),
                              leading: Icon(
                                CupertinoIcons.chat_bubble,
                                color: primaryColor,
                              ),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              title: Text("Email : zizi@18,gmail.com"),
                              leading: Icon(
                                Icons.email,
                                color: primaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "About us",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Zizi foundation is an organization that was established in the year 1997 by a group of graduates in the University of Ghana (UG) Legon.",
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
