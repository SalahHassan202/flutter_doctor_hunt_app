import 'package:doctor_hun_app/home_Screen/widgets/catogry.dart';
import 'package:doctor_hun_app/home_Screen/widgets/home_header.dart';
import 'package:doctor_hun_app/home_Screen/widgets/live_dector.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.read_more_sharp),
            label: "Read",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeHeader(),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Live Doctor",
                  style: GoogleFonts.rubik(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              SizedBox(height: 10),
              LiveDector(),
              SizedBox(height: 10),
              CategorySection(),
            ],
          ),
        ),
      ),
    );
  }
}
