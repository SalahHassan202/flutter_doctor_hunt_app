import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black12)],
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: "Search...",
          border: InputBorder.none,
          icon: Icon(Icons.search),
          suffixIcon: Icon(Icons.close),
        ),
      ),
    );
  }
}
