import 'package:clone_hydropome/widgets/bottom_clipper.dart';

import 'package:clone_hydropome/widgets/custom_button.dart';
import 'package:clone_hydropome/widgets/custom_dialog.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetialTanaman extends StatelessWidget {
  const DetialTanaman({super.key});

  void showCustomDialog(BuildContext context) {
    showDialog(context: context, builder: (ctx) => CustomDialog());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
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
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFE8ECF4),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),
              ],
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
                      Image.asset('assets/jam.png'),
                      SizedBox(width: 5),
                      Text(
                        '3-5 Minggu',
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0XFF98A0AA),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deskripsi',
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Selada merupakan salah satu tanaman paling populer dalam budidaya hidroponik karena pertumbuhannya yang cepat dan perawatannya yang mudah. Tanaman ini cocok untuk pemula karena tidak memerlukan banyak nutrisi khusus atau perawatan intensif. Selada tumbuh subur di sistem hidroponik seperti NFT (Nutrient Film Technique) dan dapat dipanen dalam waktu 3–5 minggu setelah tanam',
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xFF757575),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Alat dan Bahan yang Dibutuhkan',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            const SizedBox(height: 8),
                            _buildNumberedItem(
                              number: '1',
                              title: 'Wadah atau Bak Tanam',
                              description:
                                  'Tempat air nutrisi dan tanaman ditetakkan.',
                            ),
                            const SizedBox(height: 8),
                            _buildNumberedItem(
                              number: '2',
                              title: 'Netpot: Pot kecil berlubang',
                              description:
                                  'Untuk menahan tanaman dan media tanam.',
                            ),
                            const SizedBox(height: 8),
                            _buildNumberedItem(
                              number: '3',
                              title: 'Spons/Rockwool',
                              description: 'Media tanam tempat benih tumbuh.',
                            ),
                            const SizedBox(height: 8),
                            _buildNumberedItem(
                              number: '4',
                              title: 'Pompa Air (untuk rakit apung)',
                              description:
                                  'Mengalirkan nutrisi (opsional untuk sirkulasi.',
                            ),
                            const SizedBox(height: 8),
                            _buildNumberedItem(
                              number: '5',
                              title:
                                  'Penutup atau Styrofoam (untuk rakit apung)',
                              description: 'Untuk mencegah netpot.',
                            ),
                            const SizedBox(height: 8),
                            _buildNumberedItem(
                              number: '6',
                              title: 'Alat ukur pH dan TDS',
                              description:
                                  'Untuk memantau kualitas larutan nutrisi',
                            ),
                            const SizedBox(height: 8),
                            _buildNumberedItem(
                              number: '7',
                              title: 'Benih selada',
                              description: null,
                            ),
                            const SizedBox(height: 8),
                            _buildNumberedItem(
                              number: '8',
                              title: 'Nutrisi AB Mix',
                              description: null,
                            ),
                            const SizedBox(height: 8),
                            _buildNumberedItem(
                              number: '9',
                              title: 'Air Bersih',
                              description: null,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tutorial Menanam',
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.08),
                                  blurRadius: 16,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        topRight: Radius.circular(16),
                                        bottomLeft: Radius.circular(16),
                                        bottomRight: Radius.circular(16),
                                      ),
                                      child: Image.asset(
                                        'assets/video.png',
                                        height: 194,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),

                                    Container(
                                      width: 64,
                                      height: 64,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.9),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.play_arrow_rounded,
                                        size: 40,
                                        color: Color(0xFF0F9D7D),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),

                                Text(
                                  'Menanam Selada Hidroponik',
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xFF1A1A1A),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
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
            print("haloo");
          },
        ),
      ),
    );
  }

  Widget _buildNumberedItem({
    required String number,
    required String title,
    String? description,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$number. ',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14,

            color: const Color(0xFF1A1A1A),
            fontWeight: FontWeight.w700,
          ),
        ),

        Expanded(
          child: RichText(
            text: TextSpan(
              style: GoogleFonts.plusJakartaSans(
                fontSize: 12,
                color: const Color(0xFF1A1A1A),
                fontWeight: FontWeight.w400,
              ),
              children: [
                TextSpan(
                  text: title,
                  style: const TextStyle(
                    color: Color(0xFF1A1A1A),
                    fontWeight: FontWeight.bold,
                  ),
                ),

                if (description != null) ...[
                  TextSpan(
                    text: ' - ',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  TextSpan(
                    text: description,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}
