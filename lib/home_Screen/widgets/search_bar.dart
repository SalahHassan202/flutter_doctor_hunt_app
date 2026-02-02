import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),

      width: 335,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(blurRadius: 12, color: Colors.black12)],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search...",
          border: InputBorder.none,
          suffix: Icon(Icons.search),
          suffixIcon: Icon(Icons.close),
        ),
      ),
    );
  }
}
