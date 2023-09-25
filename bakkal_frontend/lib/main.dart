import 'package:bakkal/pages/homescreen.dart';
import 'package:flutter/material.dart';
import 'pages/getstarted.dart';
import 'pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      //defining routes for the onTap function
      routes: {
        '/getstarted': (context) => const GetStarted(),
        '/homescreen': (context) => const HomeScreen(),
        '/login': (context) => const LoginPage(),
      },
    );
  }
}
