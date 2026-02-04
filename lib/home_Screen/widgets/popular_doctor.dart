import 'package:flutter/material.dart';

class PopularDoctor extends StatelessWidget {
  const PopularDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          SizedBox(
            height: 100,
            child: _PopularDoctorCard(
              name: "Dr. Fillerup Grab",
              role: "Medicine Specialist",
              rating: 4,
              imageAsset: "assets/popular_doctor_1.png",
            ),
          ),
          SizedBox(width: 12),
          SizedBox(
            height: 100,
            child: _PopularDoctorCard(
              name: "Dr. Blessing",
              role: "Dentist Specialist",
              rating: 4,
              imageAsset: "assets/popular_doctor_2.png",
            ),
          ),
        ],
      ),
    );
  }
}

class _PopularDoctorCard extends StatelessWidget {
  final String name;
  final String role;
  final int rating;
  final String? imageAsset;

  const _PopularDoctorCard({
    required this.name,
    required this.role,
    required this.rating,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          SizedBox(
            width: 160,
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: SizedBox(
                width: double.infinity,
                child: imageAsset == null
                    ? Container(
                        color: const Color(0xFFE6E7E1),
                        child: const Center(
                          child: Icon(
                            Icons.image_outlined,
                            color: Color(0xFF9A9A9A),
                          ),
                        ),
                      )
                    : Image.asset(imageAsset!, fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(height: 10),

          Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 2),
          Text(
            role,
            style: const TextStyle(fontSize: 11, color: Color(0xFF8A8A8A)),
          ),
          const SizedBox(height: 6),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
              (i) => Icon(
                i < rating ? Icons.star : Icons.star_border,
                size: 14,
                color: const Color(0xFFFFC107),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
