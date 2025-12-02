import 'package:clone_hydropome/screens/pantau_task_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TanamanItem extends StatelessWidget {
  final String image;
  final String name;
  final String difficultyText;
  final int day;

  const TanamanItem({
    super.key,
    required this.image,
    required this.name,
    required this.difficultyText,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(image, width: 72, height: 72, fit: BoxFit.cover),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: difficultyText == 'Mudah'
                          ? Color(0xFF179778)
                          : Color(0xFFC10101),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    difficultyText,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: difficultyText == 'Mudah'
                          ? Color(0xFF179778)
                          : Color(0xFFC10101),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Image.asset('assets/logo_plant.png'),
                  SizedBox(width: 5),
                  Text(
                    'Hari ke-$day',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(width: 16),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PantauTask()),
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            width: 64,
            height: 36,
            decoration: BoxDecoration(
              color: Color(0xFF179778),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              "Pantau",
              style: GoogleFonts.plusJakartaSans(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
