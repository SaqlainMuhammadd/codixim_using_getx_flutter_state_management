import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:codixim/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CodiXim',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: TextTheme(
            displayLarge: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white)),
      ),
      home: AnimatedSplashScreen(
        splash: Container(
          height: 500,
          width: 500,
          child: Center(
            child: Image.asset('assets/images/codiximlogo.png'),
          ),
        ),
        nextScreen: HomeScreen(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 1500,
      ),
    );
  }
}
