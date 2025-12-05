import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clone_hydropome/widgets/carr_optionSurvey.dart';
import 'package:clone_hydropome/widgets/custom_button.dart';
import 'package:clone_hydropome/widgets/top_clipper.dart';
import 'package:clone_hydropome/screens/personalisai_page3.dart';
import 'package:clone_hydropome/widgets/card_checkboxSurvey.dart';

class SurveyScreenTwo extends StatefulWidget {
  const SurveyScreenTwo({Key? key}) : super(key: key);

  @override
  State<SurveyScreenTwo> createState() => _SurveyScreenTwoState();
}

class _SurveyScreenTwoState extends State<SurveyScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF093731),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Container(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(20, 255, 255, 255),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),

                    SizedBox(width: 10),

                    Row(
                      children: [
                        Text(
                          '2/3',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 12,

                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(20, 255, 255, 255),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            'Lewati',
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),

              Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipPath(
                    clipper: TopClipper(),
                    child: Container(
                      width: double.infinity,

                      height: 1100,
                      color: Colors.white,
                    ),
                  ),

                  Transform.translate(
                    offset: const Offset(0, -35),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 24,

                        bottom: MediaQuery.of(context).padding.bottom + 20,
                      ),

                      child: Column(
                        children: [
                          CheckboxSurveyCard(
                            iconPath: 'assets/logo_plant.png',
                            question:
                                'Jenis tanaman apa saja yang ingin kamu tanam?',
                            options: [
                              "Sayuran daun (misalnya selada, bayam)",
                              "Buah (misalnya tomat, stroberi)",
                              "Tanaman herbal",
                              "Belum tahu / ingin rekomendasi",
                            ],
                          ),
                          const SizedBox(height: 20),
                          SurveyCard(
                            iconPath: 'assets/logo_plant.png',
                            question:
                                'Berapa  waktu yang bisa diluangkan per hari untuk merawat tanaman?',
                            options: ['<10 menit', '10–30 menit', '>30 menit'],
                          ),
                          const SizedBox(height: 20),
                          SurveyCard(
                            iconPath: 'assets/logo_plant.png',
                            question:
                                'Di mana kamu akan menanam tanaman hidroponik?',
                            options: [
                              'Dalam ruangan',
                              'Luar ruangan',
                              'Balkon atas teras',
                            ],
                          ),
                          const SizedBox(height: 48),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: MediaQuery.of(context).padding.bottom + 16,
          top: 12,
        ),
        child: CustomButton(
          text: 'Selanjutnya',
          isPrimary: true,
          onTap: (context) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SurveyScreenThree()),
            );
          },
        ),
      ),
    );
  }
}
