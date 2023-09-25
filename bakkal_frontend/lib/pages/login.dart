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
      resizeToAvoidBottomInset: true,
      backgroundColor: Color.fromARGB(255, 105, 2, 2),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            // handling overflow by x pixels
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(),
                    child: LottieBuilder.asset(
                      'assets/astronaut.json',
                      height: 250,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Text(
                    "Oh, hi there!",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Great to see you again.\nYou have been missed a lot! ",
                    textAlign: TextAlign.center,
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
                const SizedBox(
                  height: 10,
                ),

                //sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: GestureDetector(
                    onTap: () {
                      //go to GetStarted
                      Navigator.pushNamed(context, '/getstarted');
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 146, 182, 208),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],

              //register button
            ),
          ),
        ),
      ),
    );
  }
}
