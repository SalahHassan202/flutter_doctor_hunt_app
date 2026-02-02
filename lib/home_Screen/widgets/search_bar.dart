import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final String hint;
  final ValueChanged<String> onChanged;

  const SearchBar({super.key, required this.hint, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      shadowColor: Colors.black12,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            const Icon(Icons.search, color: Color(0xFF8A8A8A)),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                onChanged: onChanged,
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: const TextStyle(color: Color(0xFFB0B0B0)),
                  border: InputBorder.none,
                ),
              ),
            ),
            const Icon(Icons.close, color: Color(0xFF8A8A8A)),
          ],
        ),
      ),
    );
  }
}
