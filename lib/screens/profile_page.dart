import 'package:clone_hydropome/widgets/profile_header.dart';
import 'package:clone_hydropome/widgets/status_pesanan_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeader(),
            SizedBox(height: 56),
            Container(
              width: 365,
              height: 140,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 20)],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Status Pesanan Marketplace',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      StatusPesananItem(
                        image: 'assets/3d-square.png',
                        label: 'Diproses',
                      ),
                      SizedBox(width: 49),
                      StatusPesananItem(
                        image: 'assets/truck-fast.png',
                        label: 'Diproses',
                      ),
                      SizedBox(width: 49),
                      StatusPesananItem(
                        image: 'assets/medal-star.png',
                        label: 'Diproses',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 365,
              height: 72,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 20)],
              ),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFE8F5F2),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset('assets/logo_plant.png', scale: 0.7),
                  ),
                  SizedBox(width: 7),
                  Text(
                    'Personalisasi',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_sharp,)
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: 365,
              height: 72,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 20)],
              ),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFF0F0),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset('assets/Logout.png'),
                  ),
                  SizedBox(width: 7),
                  Text(
                    'Logout',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFC4343)
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_sharp, color: Color(0xFFFC4343),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
