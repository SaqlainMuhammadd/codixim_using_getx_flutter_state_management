import 'package:codixim/Registrations%20and%20login/login.dart';
import 'package:codixim/Registrations%20and%20login/signup.dart';
import 'package:codixim/UI%20Helper/bg.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: MyGradients.linearGradient()),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image(image: AssetImage('assets/images/homepage.png')),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => signupScreen(),
                      ));
                },
                child: Text(
                  'REGISTER',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(25)),
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Text('Already have an account?'),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => loginScreen(),
                          ));
                    },
                    child: Text(
                      'Login here',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
