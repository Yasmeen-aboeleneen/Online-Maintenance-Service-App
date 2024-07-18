import 'package:flutter/material.dart';
import 'package:online_maintenance_service/Core/Constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kVeryWhitheColor,
      body: Text('Home'),
    );
  }
}
