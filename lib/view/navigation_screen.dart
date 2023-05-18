import 'package:flutter/material.dart';
import 'package:gdsc_challenge_app/util/contants.dart';
import 'package:gdsc_challenge_app/view/account_view.dart';
import 'package:gdsc_challenge_app/view/home_view.dart';
import 'package:gdsc_challenge_app/view/watch_view.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NavigationViewState createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    WatchView(),
    AccountView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  iconSize: 30,
                  iconColor: primaryColor,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.video_camera_back,
                  text: 'Watch',
                  iconSize: 30,
                  iconColor: primaryColor,
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Account',
                  iconSize: 30,
                  iconColor: primaryColor,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
