import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 223, 155, 235),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), // Obere linke Ecke abrunden
            topRight: Radius.circular(20.0), // Obere rechte Ecke abrunden
          ),
        ),
        child: GNav(
          color: Colors.blue,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.black,
          backgroundColor: Colors
              .transparent, // Hintergrundfarbe des Containers transparent machen
          gap: 8,
          padding: EdgeInsets.all(16),
          tabs: [
            GButton(icon: Icons.home, text: 'Home'),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
