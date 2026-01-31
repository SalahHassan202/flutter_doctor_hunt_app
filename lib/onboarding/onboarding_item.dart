import 'package:doctor_hun_app/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingItem extends StatelessWidget {
  final String image;
  final String title;
  final String desc;
  const OnboardingItem({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -175,
            right: 150,
            child: Container(
              width: 350,
              height: 350,
              decoration: const BoxDecoration(
                color: Color(0xff16C79A),
                shape: BoxShape.circle,
              ),
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.asset(
                  image,
                  width: 330,
                  height: 330,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 85),

              Text(
                title,
                style: GoogleFonts.rubik(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  desc,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.grey),
                ),
              ),

              const SizedBox(height: 50),

              CustomContainer(text: "Get Started"),

              SizedBox(height: 16),

              Text(
                "Skip",
                style: GoogleFonts.rubik(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ],
      ),
    );
  }
}
