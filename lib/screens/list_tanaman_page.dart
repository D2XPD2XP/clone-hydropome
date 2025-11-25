import 'package:clone_hydropome/widgets/list_tanaman_header.dart';
import 'package:clone_hydropome/widgets/tanaman_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListTanamanPage extends StatelessWidget {
  const ListTanamanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTanamanHeader(),
            SizedBox(height: 20),
            Container(
              width: 386,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 20)],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Daftar Tanamanmu',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  TanamanItem(
                    image: 'assets/selada.png',
                    name: 'Selada Hidroponik',
                    difficultyText: 'Mudah',
                    day: 1,
                  ),
                  Divider(height: 32, color: Color(0xFFEDEDED),),
                  TanamanItem(
                    image: 'assets/bayam.png',
                    name: 'Bayam Hidroponik',
                    difficultyText: 'Mudah',
                    day: 5,
                  ),
                  Divider(height: 32, color: Color(0xFFEDEDED),),
                  TanamanItem(
                    image: 'assets/cabai.png',
                    name: 'Cabai Hidroponik',
                    difficultyText: 'Sulit',
                    day: 10,
                  ),
                ],
              ),
            ),
            SizedBox(height: 26,),
            Container(
              width: 386,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 20)],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Riwayat',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  TanamanItem(
                    image: 'assets/selada.png',
                    name: 'Selada Hidroponik',
                    difficultyText: 'Mudah',
                    day: 1,
                  ),
                  Divider(height: 32, color: Color(0xFFEDEDED),),
                  TanamanItem(
                    image: 'assets/bayam.png',
                    name: 'Bayam Hidroponik',
                    difficultyText: 'Mudah',
                    day: 5,
                  ),
                  Divider(height: 32, color: Color(0xFFEDEDED),),
                  TanamanItem(
                    image: 'assets/cabai.png',
                    name: 'Cabai Hidroponik',
                    difficultyText: 'Sulit',
                    day: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
