import 'package:flutter/material.dart';

class FeaturedDoctor extends StatelessWidget {
  const FeaturedDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (_, i) => _FeatureDoctorCard(
          name: i == 0
              ? "Dr. Crick"
              : i == 1
              ? "Dr. Strain"
              : i == 2
              ? "Dr. Lachinet"
              : "Dr. Milner",
          rating: i == 0
              ? "3.7"
              : i == 1
              ? "3.0"
              : i == 2
              ? "2.9"
              : "3.2",
          price: "\$25.00/hours",
          imageAsset: null,
        ),
      ),
    );
  }
}

class _FeatureDoctorCard extends StatelessWidget {
  final String name;
  final String rating;
  final String price;
  final String? imageAsset;

  const _FeatureDoctorCard({
    required this.name,
    required this.rating,
    required this.price,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(Icons.favorite_border, size: 14, color: Color(0xFF8A8A8A)),
              Spacer(),
              Icon(Icons.star, size: 13, color: Color(0xFFFFC107)),
            ],
          ),

          Align(
            alignment: Alignment.centerRight,
            child: Text(
              rating,
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w800),
            ),
          ),

          /// Avatar
          CircleAvatar(
            radius: 18,
            backgroundColor: const Color(0xFFE6E7E1),
            backgroundImage: imageAsset == null
                ? null
                : AssetImage(imageAsset!),
            child: imageAsset == null
                ? const Icon(Icons.person, size: 18, color: Color(0xFF9A9A9A))
                : null,
          ),

          /// Name
          Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w900),
          ),

          /// Price
          Text(
            price,
            style: const TextStyle(fontSize: 9, color: Color(0xFF8A8A8A)),
          ),
        ],
      ),
    );
  }
}
