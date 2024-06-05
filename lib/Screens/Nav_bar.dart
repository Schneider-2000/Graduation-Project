import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0 , vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromRGBO(105, 103, 103, 1),
            gap: 8,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                
                icon: Icons.home,
                text: 'Home',
              ),
                GButton(
                icon: Icons.account_circle_outlined,
                text: 'Profile',
                ),
                GButton(
                icon: Icons.settings,
                text: 'Settings',
                ),
            ],
            ),
        ),
      ),
    );
  }
}