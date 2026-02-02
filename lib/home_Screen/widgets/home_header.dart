import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),

      width: double.infinity,
      height: 156,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff16C79A), Color(0xff0FB9B1)],
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12),
              Text(
                "Hi Handwerker!",
                style: GoogleFonts.rubik(
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Find Your Doctor",
                style: GoogleFonts.rubik(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/person.png"),
          ),
        ],
      ),
    );
  }
}
