import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clone_hydropome/widgets/card_homepage_info.dart';
import 'package:clone_hydropome/widgets/top_clipper.dart';
import 'package:clone_hydropome/widgets/card_homepage.dart';
import 'package:clone_hydropome/widgets/flash_banner.dart';
import 'package:clone_hydropome/widgets/product_card.dart';
import 'package:clone_hydropome/screens/detial_tanaman.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF093731),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Container(
          padding: const EdgeInsets.only(top: 28),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 12,
                  bottom: 12,
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Halo Mellafesa! 👋🏻',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Berkebun Apa Hari Ini?',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(width: 10),

                    Container(
                      width: 48,
                      height: 48,
                      decoration: const BoxDecoration(
                        color: Color(0xFFE8F5F1),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/poto.png",
                          width: 41,
                          height: 41,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 105),

              Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipPath(
                    clipper: TopClipper(),
                    child: Container(
                      width: double.infinity,

                      height: 1300,
                      color: Colors.white,
                    ),
                  ),

                  Transform.translate(
                    offset: const Offset(0, -90),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 20, right: 24),

                      child: Column(
                        children: [
                          ProgressCard(
                            title: 'Belum Ada Progress Tanaman Hari Ini…',
                            subtitle:
                                'Ayo pilih tanaman pertama kamu dan mulai tanam sekarang!',
                            trailing: Image.asset('assets/tanaman_home.png'),
                          ),

                          const SizedBox(height: 20),

                          Container(
                            padding: const EdgeInsets.only(
                              bottom: 4,
                              top: 4,
                              left: 16,
                              right: 16,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFF5F5F5),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/icon_search.png',
                                  width: 24,
                                  height: 24,
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Cari tanaman...',
                                      hintStyle: GoogleFonts.plusJakartaSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 17),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Rekomendasi Untukmu',
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  Text(
                                    'Lihat semua',
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0XFF179778),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  HydroponicCard(
                                    imagePath: 'assets/selada.png',
                                    title: 'Selada Hidroponik',
                                    difficulty: 'Mudah',
                                    duration: '3-5 Ming',
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DetialTanaman(),
                                        ),
                                      );
                                    },
                                  ),
                                  HydroponicCard(
                                    imagePath: 'assets/bayam.png',
                                    title: 'Bayam Hidroponik',
                                    difficulty: 'Mudah',
                                    duration: '3-4 Ming',
                                    onTap: () {
                                      print('Card tapped!');
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  HydroponicCard(
                                    imagePath: 'assets/pakcoy.png',
                                    title: 'Pakcoy Hidroponik',
                                    difficulty: 'Sedang',
                                    duration: '4-5 Ming',
                                    onTap: () {
                                      print('Card tapped!');
                                    },
                                  ),
                                  HydroponicCard(
                                    imagePath: 'assets/tomat.png',
                                    title: 'Tomat Cherry ',
                                    difficulty: 'Mudah',
                                    duration: '8-10 Ming',
                                    onTap: () {
                                      print('Card tapped!');
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  HydroponicCard(
                                    imagePath: 'assets/seledri.png',
                                    title: 'Seledri Hidroponik',
                                    difficulty: 'Sedang',
                                    duration: '5-6 Ming',
                                    onTap: () {
                                      print('Card tapped!');
                                    },
                                  ),
                                  HydroponicCard(
                                    imagePath: 'assets/strobery.png',
                                    title: 'Stroberi Hidroponik',
                                    difficulty: 'Sulit',
                                    duration: '12-16 Ming',
                                    onTap: () {
                                      print('Card tapped!');
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 33),
                          Column(
                            children: [
                              FlashSaleBanner(),
                              SizedBox(height: 24),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ProductCard(
                                    imagePath: 'assets/paketPipa.png',
                                    category: 'Starter Kit',
                                    title: 'Paket Pipa NFT',
                                    price: 125000,
                                    originalPrice: 150000,
                                    hasBonus: false,
                                    onTap: () {
                                      print('Product card tapped!');
                                    },
                                  ),
                                  ProductCard(
                                    imagePath: 'assets/paketlENGKAP.png',
                                    category: 'Starter Kit',
                                    title: 'Paket Lengkap',
                                    price: 55000,
                                    originalPrice: 75000,
                                    hasBonus: false,
                                    onTap: () {
                                      print('Product card tapped!');
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
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
    );
  }
}
