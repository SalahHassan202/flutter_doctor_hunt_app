import 'package:flutter/material.dart';

class CatogryTitle extends StatelessWidget {
  final IconData icon;
  final Color color;
  const CatogryTitle({super.key, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Icon(icon, color: Colors.white),
    );
  }
}
