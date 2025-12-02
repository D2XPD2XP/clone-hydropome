import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusPesananItem extends StatelessWidget {
  const StatusPesananItem({
    super.key,
    required this.image,
    required this.label,
  });

  final String image;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        SizedBox(height: 4),
        Text(
          label,
          style: GoogleFonts.plusJakartaSans(
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
