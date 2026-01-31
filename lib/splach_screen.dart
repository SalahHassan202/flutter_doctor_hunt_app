import 'package:flutter/material.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset("assets/top.png"),
          Center(child: Image.asset("assets/Logo.png")),
          Image.asset("assets/bottom.png"),
        ],
      ),
    );
  }
}
