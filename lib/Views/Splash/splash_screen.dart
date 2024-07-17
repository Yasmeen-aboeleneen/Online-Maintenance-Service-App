import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/img/splash.png',
                ),
                fit: BoxFit.cover)),
      ),
    );
  }
}
