import 'package:doctor_hun_app/home_Screen/widgets/catogry_title.dart';
import 'package:flutter/material.dart';

class CatogryGrid extends StatelessWidget {
  const CatogryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: const [
          Expanded(
            child: CatogryTitle(
              icon: Icons.medical_services,
              color: Color(0xFF3E7BFF),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: CatogryTitle(icon: Icons.spa, color: Color(0xFF00C38A)),
          ),
          SizedBox(width: 10),
          Expanded(
            child: CatogryTitle(
              icon: Icons.visibility,
              color: Color(0xFFFF8A3D),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: CatogryTitle(icon: Icons.favorite, color: Color(0xFFFF5C5C)),
          ),
        ],
      ),
    );
  }
}
