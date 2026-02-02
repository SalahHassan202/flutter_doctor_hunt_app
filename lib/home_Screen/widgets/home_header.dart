import 'package:doctor_hun_app/home_Screen/widgets/avatar.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    const green = Color(0xFF00C38A);

    return Stack(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 14),
          decoration: const BoxDecoration(
            color: green,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(22),
              bottomRight: Radius.circular(22),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // top row: greeting + avatar
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Hi Handwerker!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Avatar(size: 34),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "Find Your Doctor",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
        // Search box floating
        Positioned(
          left: 16,
          right: 16,
          bottom: -15,
          child: SearchBar(hintText: "Search...", onChanged: (v) {}),
        ),
      ],
    );
  }
}
