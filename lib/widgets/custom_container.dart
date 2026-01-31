import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String text;

  const CustomContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 295,
      height: 91,
      decoration: BoxDecoration(color: Color(0xff0EBE7F)),
      child: Center(child: Text(text)),
    );
  }
}
