import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double size;
  const Avatar({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage("assets/person.png"),
    );
  }
}
