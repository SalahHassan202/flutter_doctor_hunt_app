import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double size;
  const Avatar({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: Colors.white.withOpacity(.25),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(child: Icon(Icons.person, color: Colors.white)),
    );
  }
}
