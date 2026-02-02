import 'package:flutter/material.dart';

class LiveDoctorCard extends StatelessWidget {
  final bool live;
  final String? imageAsset;
  const LiveDoctorCard({
    super.key,
    required this.live,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          // image
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: SizedBox(
              width: 120,
              height: 170,
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

          // play button
          const Center(
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Colors.white,
              child: Icon(Icons.play_arrow, size: 18, color: Color(0xFF00C38A)),
            ),
          ),

          // live badge
          if (live)
            Positioned(
              right: 20,
              top: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFFFF4D4D),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "LIVE",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
