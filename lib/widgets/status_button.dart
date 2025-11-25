import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusButton extends StatelessWidget {
  const StatusButton({
    super.key,
    required this.text,
    required this.idx,
    required this.onTap,
    required this.isSelected,
  });

  final String text;
  final int idx;
  final void Function(int) onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      child: InkWell(
        onTap: () => onTap(idx),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
          height: 30,
          decoration: isSelected
              ? BoxDecoration(
                  color: Color(0xFF179778),
                  borderRadius: BorderRadius.circular(12),
                )
              : BoxDecoration(
                  color: Color(0xFFE8F5F2),
                  border: Border.all(color: Color(0xFF179778)),
                  borderRadius: BorderRadius.circular(12),
                ),
          child: Text(
            text,
            style: GoogleFonts.plusJakartaSans(
              color: isSelected ? Colors.white : Color(0xFF179778),
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
