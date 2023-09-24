import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
//import 'package:google_nav_bar/google_nav_bar.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 105, 2, 2),
      body: Padding(
        padding: const EdgeInsets.all(19.0),
        child: SingleChildScrollView(
          // needed for fix of bottom overflow by x pixels
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              //header
              Text(
                "BakkalNavi",
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 35,
                    color: const Color.fromARGB(255, 248, 248, 248)),
              ),

              const SizedBox(height: 20),

              //text1
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Your products may run away from you!",
                  style: GoogleFonts.dmSerifText(
                      fontSize: 35, color: Color.fromARGB(255, 204, 214, 231)),
                ),
              ),

              const SizedBox(),

              //text2
              Text(
                "Go Catch em!",
                style: GoogleFonts.dmSerifText(
                    fontSize: 35, color: Color.fromARGB(255, 204, 214, 231)),
              ),

              //animation
              Padding(
                padding: const EdgeInsets.all(40),
                child: Lottie.network(
                    'https://lottie.host/7f810105-6ece-4cf8-b0bb-9e66f672d363/gV31EjTanb.json'),
              ),

              const SizedBox(),

              //get started button
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 170, 21, 21),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
