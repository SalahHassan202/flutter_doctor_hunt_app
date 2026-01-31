import 'package:doctor_hun_app/home_Screen/home_screen.dart';
import 'package:doctor_hun_app/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingItem extends StatelessWidget {
  final String image;
  final String title;
  final String desc;
  final int index;
  const OnboardingItem({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: index == 1 ? -200 : -175,
            right: index == 1 ? null : 150,
            left: index == 1 ? 120 : null,
            child: Container(
              width: 450,
              height: 550,
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
                  fit: BoxFit.fill,
                ),
              ),

              SizedBox(height: 60),

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

              const SizedBox(height: 80),

              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => HomeScreen()),
                  );
                },

                child: CustomContainer(text: "Get Started"),
              ),

              SizedBox(height: 24),

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
