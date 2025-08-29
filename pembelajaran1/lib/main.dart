import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pembelajaran1/login_page/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "mySiswa",
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Center(
          child: Column(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Lottie.asset('images/splash/moon.json'),
              ),
              Text(
                "Hello",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        nextScreen: Homepage(username: AutofillHints.username),
        splashIconSize: 150,
        backgroundColor: Colors.white,
        duration: 3000,
      ),

      // title: "mysiswa",
      // debugShowCheckedModeBanner: false,
      // home: Login(),
    );
  }
}
