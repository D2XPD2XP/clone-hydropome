import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget dayItem({
  required String label,
  required String day,
  required bool active,
}) {
  return Container(
    margin: EdgeInsets.only(right: 12),
    width: 54,
    height: 64,
    decoration: BoxDecoration(
      color: active ? Color(0xFF179778) : Color(0xFFE6F4F1),
      borderRadius: BorderRadius.circular(
        100,
      ), 
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: GoogleFonts.plusJakartaSans(
            color: active ? Colors.white : Color(0xFF179778),
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          day,
          style: GoogleFonts.plusJakartaSans(
            color: active ? Colors.white : Color(0xFF179778),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}
