import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HydroponicCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String difficulty;
  final String duration;
  final VoidCallback? onTap;

  const HydroponicCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.difficulty,
    required this.duration,
    this.onTap,
  }) : super(key: key);

  Color _getDifficultyColor() {
    switch (difficulty.toLowerCase()) {
      case 'mudah':
        return const Color(0xFF0F9D7D);
      case 'sedang':
        return const Color(0xFFFFA726);
      case 'sulit':
        return const Color(0xFFEF5350);
      default:
        return const Color(0xFF0F9D7D);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 16,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                height: 128,
                width: 141,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 128,
                    width: 141,
                    color: Colors.grey[300],
                    child: const Icon(
                      Icons.image_not_supported,
                      size: 50,
                      color: Colors.grey,
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.start,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF1A1A1A),
              ),
            ),

            const SizedBox(height: 8),
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: _getDifficultyColor(),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      difficulty,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: _getDifficultyColor(),
                      ),
                    ),
                  ],
                ),

                const SizedBox(width: 8),

                Row(
                  children: [
                    Icon(Icons.access_time, size: 16, color: Colors.grey[600]),
                    const SizedBox(width: 4),
                    Text(
                      duration,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
