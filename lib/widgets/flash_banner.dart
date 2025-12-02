import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlashSaleBanner extends StatelessWidget {
  const FlashSaleBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Starter Kit Flash Sale',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF1A1A1A),
                ),
              ),
              const SizedBox(width: 4),
              const Text('🔥', style: TextStyle(fontSize: 20)),
            ],
          ),

          const SizedBox(width: 12),

          Row(
            children: [
              _TimeBox(time: '01'),
              const SizedBox(width: 4),
              _TimeSeparator(),
              const SizedBox(width: 4),

              _TimeBox(time: '20'),
              const SizedBox(width: 4),
              _TimeSeparator(),
              const SizedBox(width: 4),

              _TimeBox(time: '47'),
            ],
          ),
        ],
      ),
    );
  }
}

class _TimeBox extends StatelessWidget {
  final String time;

  const _TimeBox({required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFF0F9D7D),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        time,
        style: GoogleFonts.plusJakartaSans(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _TimeSeparator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      ':',
      style: GoogleFonts.plusJakartaSans(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: const Color(0xFF0F9D7D),
      ),
    );
  }
}
