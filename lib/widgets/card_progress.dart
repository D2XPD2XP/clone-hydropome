import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardProgress extends StatelessWidget {
  const CardProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 12, left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Progres Menanam',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Ayo mulai menanam!',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    width: 214,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: LinearProgressIndicator(
                        value: 0.04,
                        minHeight: 10,
                        backgroundColor: Colors.orange.withValues(alpha: 0.1),
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '0% Selesai',
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xFFFB9A23),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14.65, right: 11.39),
            child: Image.asset(
              'assets/pohonkeramat.png',
              height: 150,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
