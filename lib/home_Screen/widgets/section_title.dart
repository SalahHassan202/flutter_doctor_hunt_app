import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String trailingText;
  const SectionTitle({
    super.key,
    required this.title,
    required this.trailingText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.w900)),
          const Spacer(),
          Text(
            trailingText,
            style: const TextStyle(fontSize: 12, color: Color(0xFF8A8A8A)),
          ),
        ],
      ),
    );
  }
}
