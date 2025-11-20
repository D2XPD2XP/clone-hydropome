import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.isPrimary, required this.text});

  final String text;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 120),
      width: double.infinity,
      height: 48,
      decoration: isPrimary
          ? BoxDecoration(
              color: Color(0xFF179778),
              borderRadius: BorderRadius.circular(12),
            )
          : BoxDecoration(
              color: Color(0xFFE8F5F2),
              border: Border.all(color: Color(0xFF179778)),
              borderRadius: BorderRadius.circular(12),
            ),
      child: Text(
        text,
        style: GoogleFonts.plusJakartaSans(
          color: isPrimary ? Colors.white : Color(0xFF179778),
          fontSize: 16,
          fontWeight: FontWeight.w600
        ),
      ),
    );
  }
}
