import 'package:clone_hydropome/widgets/bottom_clipper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListTanamanHeader extends StatelessWidget {
  const ListTanamanHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: BottomClipper(),
          child: Container(
            padding: EdgeInsets.only(left: 20),
            color: Color(0xFF093731),
            height: 240,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30),
                  width: 231,
                  child: Text(
                    'Bagaimana Kabar Tanamanmu Hari Ini?',
                    style: GoogleFonts.plusJakartaSans(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 13),
                Padding(
                  padding: const EdgeInsets.only(top: 65, right: 26.3),
                  child: Image.asset(
                    'assets/pohonkeramat.png',
                    height: 160,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 20,
          right: 20,
          bottom: 0,
          child: Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 3,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                Image.asset('assets/search_icon.png'),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Cari tanaman kamu...',
                      hintStyle: GoogleFonts.plusJakartaSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF98A0AA),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
