import 'package:doctor_hun_app/splach_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DoctorHunt());
}

class DoctorHunt extends StatelessWidget {
  const DoctorHunt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplachScreen());
  }
}
