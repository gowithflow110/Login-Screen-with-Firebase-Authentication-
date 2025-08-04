import 'package:flutter/material.dart';

class SplashLoginScreen extends StatelessWidget {
  const SplashLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CircularProgressIndicator(), // ⏳ Simple splash
      ),
    );
  }
}
