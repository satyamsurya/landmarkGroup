import 'package:flutter/material.dart';

import 'listingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => ListingScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(animation);
            return FadeTransition(opacity: fadeAnimation, child: child);
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Splash Screen"), // Replace with your logo or animation
      ),
    );
  }
}
