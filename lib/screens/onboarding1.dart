import 'package:flutter/material.dart';
import 'onboarding2.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF093731),
      body: Column(
        children: [
          // gambar arc
          ClipPath(
            clipper: _ArcClipper(),
            child: Image.asset(
              'assets/onboarding1.png',
              width: double.infinity,
              height: 380,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 20),

          // TEKS
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: const [
                Text(
                  'Tanam Sayur Segar dari Rumah Tanpa Ribet! 🥕🍅',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Bersama HydropoMe, menanam sayuran untuk hidup lebih sehat dan hemat jadi lebih mudah!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),

          const Spacer(),

          // INDICATOR + NEXT
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _Dot(active: true),
              const SizedBox(width: 6),
              _Dot(active: false),
              const SizedBox(width: 50),

              // BUTTON NEXT
              GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Onboarding2()),
                );
              },
              child: const Icon(Icons.arrow_forward, color: Colors.white, size: 36),
            ),
            ],
          ),
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}

// DOT Indicator
class _Dot extends StatelessWidget {
  final bool active;
  const _Dot({required this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: active ? 12 : 8,
      height: active ? 12 : 8,
      decoration: BoxDecoration(
        color: active ? Colors.tealAccent : Colors.white30,
        shape: BoxShape.circle,
      ),
    );
  }
}

// Custom curve clipper
class _ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
      size.width / 2, size.height,
      size.width, size.height - 80,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(_) => false;
}
