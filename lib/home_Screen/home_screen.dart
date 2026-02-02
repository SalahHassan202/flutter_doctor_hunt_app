import 'package:doctor_hun_app/home_Screen/widgets/catogry_grid.dart';
import 'package:doctor_hun_app/home_Screen/widgets/featured_doctor.dart';
import 'package:doctor_hun_app/home_Screen/widgets/home_header.dart';
import 'package:doctor_hun_app/home_Screen/widgets/live_dector_section.dart';
import 'package:doctor_hun_app/home_Screen/widgets/popular_doctor.dart';
import 'package:doctor_hun_app/home_Screen/widgets/section_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAppBar(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            HomeHeader(),
            SizedBox(height: 14),
            LiveDectorSection(),
            SizedBox(height: 16),
            CatogryGrid(),
            SizedBox(height: 18),
            SectionTitle(title: "Popular Doctor", trailingText: "See all"),
            SizedBox(height: 10),
            PopularDoctor(),
            SizedBox(height: 18),
            SectionTitle(title: "Feature Doctor", trailingText: "See all"),
            SizedBox(height: 10),
            FeaturedDoctor(),
            SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}
