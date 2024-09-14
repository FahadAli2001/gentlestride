import 'package:flutter/material.dart';
import 'package:gentlestride/const/colors/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTreatWidget extends StatelessWidget {
  final String heading;
  final String image;
  final String detail;
  const CustomTreatWidget(
      {super.key,
      required this.heading,
      required this.detail,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        children: [
          Center(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              height: 150,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              heading,
              style: GoogleFonts.poppins(
                  letterSpacing: 1,
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: darkBlue),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                detail,
                style: GoogleFonts.roboto(fontSize: 18, color: grey),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "Read More",
              style: GoogleFonts.roboto(
                  fontSize: 20, fontWeight: FontWeight.bold, color: darkBlue),
            ),
          ),
        ],
      ),
    );
  }
}
