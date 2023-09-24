import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 105, 2, 2),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Lottie.network(
                    'https://lottie.host/8584e336-399d-4d43-86f8-594a16a5fd5a/VXNG6W5mag.json'),
              ),
              Text(
                "Oh, hi there!",
                style: GoogleFonts.bebasNeue(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),

              Padding(
                padding: const EdgeInsets.all(100.0),
                child: Text(
                  "Great to see you again. You have been missed a lot! ",
                  style: GoogleFonts.dmSans(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              //username textfield

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white38,
                    border: Border.all(
                        color: Colors
                            .white), // creates white lines around textfield
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'username',
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white38,
                    border: Border.all(
                        color: Colors
                            .white), // creates white lines around textfield
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'password',
                      ),
                    ),
                  ),
                ),
              ),
            ],

            //sign in button

            //register button
          ),
        ),
      ),
    );
  }
}
