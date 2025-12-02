import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget? trailing;
  final double trailingWidth;
  final double trailingHeight;

  const ProgressCard({
    Key? key,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.trailingWidth = 100,
    this.trailingHeight = 160,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 20,
            spreadRadius: 0,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 35.5,
                bottom: 35.5,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    subtitle,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600],
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
          ),

          if (trailing != null)
            SizedBox(
              width: trailingWidth,
              height: trailingHeight,
              child: trailing,
            ),
        ],
      ),
    );
  }
}
