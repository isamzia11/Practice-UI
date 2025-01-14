import 'package:flutter/material.dart';
import 'package:flutter_application_3/home_screen.dart';
import 'package:flutter_application_3/screen_three.dart';
import 'package:flutter_application_3/screen_two.dart';

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
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ScreenTwo.id: (context) => ScreenTwo(),
        ScreenThree.id: (context) => ScreenThree()
      },
    );
  }
}
