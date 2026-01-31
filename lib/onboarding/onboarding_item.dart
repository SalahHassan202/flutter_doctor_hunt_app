import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  final String image;
  final String title;
  final String desc;
  const OnboardingScreen({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Positioned(
        top: -150,
        right: -100,
        child: Container(
          width: 350,
          height: 350,
          decoration: BoxDecoration(
            color: Color(0xff16C79A),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
