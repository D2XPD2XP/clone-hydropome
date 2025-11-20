import 'package:clone_hydropome/widgets/task_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardTask extends StatelessWidget {
  const CardTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12, left: 12),
      height: 241,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '📌 Tugas Hari ke-1 ',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          TaskItem(task: 'Siapkan Nutrisi & Air 🧪', isChecked: true),
          SizedBox(height: 8),
          TaskItem(task: 'Rendam Rockwool 🧼', isChecked: false),
          SizedBox(height: 8),
          TaskItem(task: 'Tanam Benih Selada 🌱', isChecked: false),
          SizedBox(height: 8),
          TaskItem(task: 'Tutup & Simpan ☁️', isChecked: false),
          SizedBox(height: 16),
          Row(
            children: [
              Image.asset('assets/logo_plant.png'),
              SizedBox(width: 5,),
              Text(
                'Tips Hari Ini:',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Gunakan air tanpa kaporit untuk hasil terbaik!',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
