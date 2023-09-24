import 'package:flutter/material.dart';
//import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

//class to build the bottom navigation bar button

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  Widget _buildBottomBar() {
    return Container(
      height: 60,
      margin: EdgeInsets.only(bottom: 20, left: 50, right: 50),
      child: Material(
        elevation: 6,
        color: Colors.purple[100],
        shape: StadiumBorder(),
        child: BottomNavigationBar(
          elevation: 0,
          onTap: (index) {
            _currentIndex = index;
            setState(() {});
          },
          backgroundColor: Colors.transparent,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: "")
          ],
        ),
      ),
    );
  }

//beginning of Scaffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 105, 2, 2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text("Bakkal"),
      ),
      body: Column(),
    );

    /*
      backgroundColor: Colors.red[100],
      bottomNavigationBar: _buildBottomBar(),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 20),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
   */
  }
}
