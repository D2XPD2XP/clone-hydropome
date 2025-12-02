import 'package:clone_hydropome/screens/edit_profile_page.dart';
import 'package:clone_hydropome/widgets/bottom_clipper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomClipper(),
      child: Container(
        padding: EdgeInsets.only(top: 30, left: 20, right: 20),
        color: Color(0xFF093731),
        height: 200,
        child: Row(
          children: [
            Container(
              width: 68,
              height: 68,
              decoration: BoxDecoration(
                color: Color(0xFFE8F5F2),
                shape: BoxShape.circle,
              ),
              child: Image.asset('assets/memoji_girl.png', scale: 2),
            ),
            SizedBox(width: 12),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mellafesa',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'mellasesaa@gmail.com',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfilePage()),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                width: 90,
                height: 36,
                decoration: BoxDecoration(
                  color: Color(0xFF179778),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "Edit Profil",
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
        ),
      ),
    );
  }
}
