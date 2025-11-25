import 'package:clone_hydropome/widgets/bottom_clipper.dart';
import 'package:clone_hydropome/widgets/card_marketplace.dart';
import 'package:clone_hydropome/widgets/card_progress.dart';
import 'package:clone_hydropome/widgets/card_task.dart';
import 'package:clone_hydropome/widgets/custom_button.dart';
import 'package:clone_hydropome/widgets/custom_dialog.dart';
import 'package:clone_hydropome/widgets/day_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PantauTask extends StatelessWidget {
  const PantauTask({super.key});

 void showCustomDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (ctx) => CustomDialog(),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Pantau Tanaman',
          style: GoogleFonts.plusJakartaSans(
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 17.0, top: 8.0, bottom: 10.0),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Color(0xFFE8ECF4)),
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.arrow_back, color: Colors.black, size: 24),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: BottomClipper(),
              child: Image.asset(
                'assets/selada.png',
                width: double.infinity,
                height: 230,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: 28,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Selada Hidroponik',
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Color(0xFF179778),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Mudah',
                        style: GoogleFonts.plusJakartaSans(
                          color: Color(0xFF179778),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 15),
                      Image.asset('assets/logo_plant.png'),
                      SizedBox(width: 5),
                      Text(
                        'Hari ke-1',
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  CardProgress(),
                ],
              ),
            ),
            SizedBox(
              height: 65,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  dayItem(label: "Hari", day: "01", active: true),
                  for (var day = 2; day <= 8; day++)
                    dayItem(label: "Hari", day: "0$day", active: false),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 28,
                left: 20,
                right: 20,
                bottom: 24,
              ),
              child: Column(
                children: [
                  CardTask(),
                  SizedBox(height: 28,),
                  CardMarketplace(),
                  SizedBox(height: 38,),
                  CustomButton(isPrimary: false, text: 'Lihat Panduan',),
                  SizedBox(height: 12,),
                  CustomButton(isPrimary: true, text: 'Hari ke-1 Selesai', onTap: showCustomDialog,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
