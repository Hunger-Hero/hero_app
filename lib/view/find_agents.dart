import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_challenge_app/view/ngo_agent_detail_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentPosition = LatLng(25.1193, 55.3773);

class FindAgentsView extends StatelessWidget {
  const FindAgentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                const SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: currentPosition,
                      zoom: 14,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(30)),
                    child: const TextField(
                      
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          label: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text("Search Location"),
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(
                              right: 30,
                            ),
                            child: Icon(
                              Icons.search,
                            ),
                          )),
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 1,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 34,
                  ),
                  const Text(
                    "Suggested NGO Agents",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: GridView.builder(
                        itemCount: 12,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  CupertinoPageRoute(
                                    builder: (context) =>
                                        const NGOAgentDetailView(),
                                  ),
                                );
                              },
                              child: Stack(
                                children: [
                                  Container(
                                    height: 180,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      image: const DecorationImage(
                                        image: NetworkImage(
                                          "https://images.pexels.com/photos/6169002/pexels-photo-6169002.jpeg?auto=compress&cs=tinysrgb&w=1600",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Container(
                                      height: double.infinity,
                                      width: 180,
                                      color: Colors.black.withOpacity(0.5),
                                      child: Column(
                                        children: const [
                                          SizedBox(
                                            height: 105,
                                          ),
                                          Text(
                                            "Zizi foundation",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Text(
                                            "Legon-Accra",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
