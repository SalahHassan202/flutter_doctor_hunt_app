import 'package:doctor_hun_app/onboarding/onboarding_item.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        OnboardingItem(
          image: "assets/on_boarding_image_1.png",
          title: "Find Trusted Doctors",
          desc:
              "Contrary to popular belief, Lorem Ipsum is not\n simply random text. It has roots in a piece of it\n over 2000 years old.",
        ),
        OnboardingItem(
          image: "assets/on_boarding_image_2.png",
          title: "Choose Best Doctors",
          desc:
              "Contrary to popular belief, Lorem Ipsum is not\n simply random text. It has roots in a piece of it\n over 2000 years old.",
        ),
        OnboardingItem(
          image: "assets/on_boarding_image_3.png",
          title: "Easy Appointments",
          desc:
              "Contrary to popular belief, Lorem Ipsum is not\n simply random text. It has roots in a piece of it\n over 2000 years old.",
        ),
      ],
    );
  }
}
