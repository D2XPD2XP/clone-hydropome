import 'package:clone_hydropome/dummy_data/status_pesanan.dart';
import 'package:clone_hydropome/widgets/status_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusPesananPage extends StatefulWidget {
  const StatusPesananPage({super.key});

  @override
  State<StatusPesananPage> createState() {
    return _StatusPesananPageState();
  }
}

class _StatusPesananPageState extends State<StatusPesananPage> {
  int selectedIndex = 0;

  void handleButton(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Status Pesanan',
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
      body: Container(
        padding: EdgeInsets.only(top: 16, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  bool isSelected = index == selectedIndex;
                  return StatusButton(
                    text: items[index],
                    idx: index,
                    onTap: handleButton,
                    isSelected: isSelected,
                  );
                },
                itemCount: items.length,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 140,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/7.png',
                          width: 77,
                          height: 77,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Paket Lengkap',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                'Rp 25.000',
                                style: GoogleFonts.plusJakartaSans(
                                  color: Color(0xFF179778),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Rp 50.000',
                                style: GoogleFonts.plusJakartaSans(
                                  color: Color(0xFF757575),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Color(0xFF757575),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          Text(
                            'Jumlah produk: 1pcs',
                            style: GoogleFonts.plusJakartaSans(
                              color: Color(0xFF757575),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(height: 24, color: Color(0xFFEDEDED)),
                  Row(
                    children: [
                      Text(
                        '1 produk',
                        style: GoogleFonts.plusJakartaSans(
                          color: Color(0xFF757575),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Total : ',
                        style: GoogleFonts.plusJakartaSans(
                          color: Color(0xFF757575),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Rp 35.000',
                        style: GoogleFonts.plusJakartaSans(
                          color: Color(0xFF179778),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
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
