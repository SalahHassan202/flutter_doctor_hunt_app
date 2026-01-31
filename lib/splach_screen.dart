import 'package:flutter/material.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Positioned(
            top: -100,
            left: -100,
            child: Image.asset("assets/top.png"),
          ),
          Center(child: Image.asset("assets/Logo.png")),
          Positioned(
            bottom: -100,
            right: -100,
            child: Image.asset("assets/bottom.png"),
          ),
        ],
      ),
    );
  }
}
