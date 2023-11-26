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
        scaffoldBackgroundColor: const Color.fromARGB(
            0, 255, 0, 0), // Make scaffold background transparent
        canvasColor: const Color.fromARGB(
            0, 202, 19, 19), // Make canvas color transparent
        useMaterial3: true,
        textTheme: TextTheme(displayLarge: TextStyle()),
      ),
      home: AnimatedSplashScreen(
        splash: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue,
                Colors.green,
                // Add more colors as needed
              ],
            ),
          ),
          // child: Center(
          //   child: Image.asset('assets/images/codiximlogo.png'),
          // ),
        ),
        nextScreen: HomeScreen(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 3000,
      ),
    );
  }
}
