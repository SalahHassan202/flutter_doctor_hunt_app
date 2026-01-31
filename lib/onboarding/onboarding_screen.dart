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
    return Scaffold(body: Column(children: []));
  }
}
