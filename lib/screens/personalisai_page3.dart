import 'package:clone_hydropome/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clone_hydropome/widgets/carr_optionSurvey.dart';
import 'package:clone_hydropome/widgets/custom_button.dart';
import 'package:clone_hydropome/widgets/top_clipper.dart';

class SurveyScreenThree extends StatefulWidget {
  const SurveyScreenThree({Key? key}) : super(key: key);

  @override
  State<SurveyScreenThree> createState() => _SurveyScreenThreeState();
}

class _SurveyScreenThreeState extends State<SurveyScreenThree> {
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
                          '3/3',
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

                      height: 800,
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
                          SurveyCard(
                            iconPath: 'assets/logo_plant.png',
                            question:
                                "Berapa luas area tanam yang kamu miliki?",
                            options: [
                              {
                                "img": "assets/gambar_lahan.png",
                                "text": "< 1m²",
                                "imgSize": 61,
                                "fontSize": 14,
                              },
                              {
                                "img": "assets/gambar_lahan.png",
                                "text": "1-3m²",
                                "imgSize": 110.25,
                                "fontSize": 14,
                              },
                              {
                                "img": "assets/gambar_lahan.png",
                                "text": "> 3m²",
                                "imgSize": 143.5,
                                "fontSize": 14,
                              },
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
          text: 'Simpan',
          isPrimary: true,
          onTap: (context) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          },
        ),
      ),
    );
  }
}
