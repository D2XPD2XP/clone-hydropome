import 'package:clone_hydropome/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 22, left: 22, top: 29.5, bottom: 30.5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/sucsess_mark.png', width: 100, height: 100,),
            SizedBox(height: 16),
            Text(
              'Tugas Hari ke-1 Selesai 🎉',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 28),
            CustomButton(
              isPrimary: true,
              text: "Hari Berikutnya",
              onTap: (ctx) => Navigator.pop(context),
            ),
            SizedBox(height: 12,),
            CustomButton(
              isPrimary: false,
              text: "Kembali",
              onTap: (ctx) => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
