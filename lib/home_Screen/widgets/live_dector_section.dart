import 'package:doctor_hun_app/home_Screen/widgets/live_doctor_card.dart';
import 'package:flutter/material.dart';

class LiveDectorSection extends StatelessWidget {
  const LiveDectorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Live Doctors",
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 120,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (_, i) => LiveDoctorCard(
                live: true,
                // لو عندك صور حطها هنا:
                // imageAsset: "assets/images/live_$i.png",
                imageAsset: null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
