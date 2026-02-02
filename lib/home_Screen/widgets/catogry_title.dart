import 'package:flutter/material.dart';

class CatogryTitle extends StatelessWidget {
  final IconData icon;
  final Color color;
  const CatogryTitle({super.key, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 90,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Icon(icon, color: Colors.white, size: 40),
    );
  }
}
