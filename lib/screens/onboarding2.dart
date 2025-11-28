import 'package:flutter/material.dart';
import 'login.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF093731),
      body: Column(
        children: [
          // ==== AREA GAMBAR DENGAN TOMBOL LEWATI ====
          Stack(
            children: [
              ClipPath(
                clipper: _ArcClipper(),
                child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: Image.asset(
                    'assets/onboarding2.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Positioned(
                top: 40,
                right: 20,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.9),
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  child: const Text(
                    "Lewati",
                    style: TextStyle(
                      color: Color(0xFF093731),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 28),

          // ==== TEKS ====
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              children: const [
                Text(
                  'Belanja Starter Kit & Jual Hasil Panen!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  'Belanja, jual panen, dan penuhi kebutuhammu di marketplace kami. Praktis banget buat kamu yang suka berkebun dari rumah!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    height: 1.45,
                  ),
                ),
              ],
            ),
          ),

          const Spacer(),

          // ==== NAVIGATION ====
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                _BackButton(),
                SizedBox(width: 50),
                _Dot(active: false),
                SizedBox(width: 6),
                _Dot(active: true),
                SizedBox(width: 6),
                _Dot(active: false),
                SizedBox(width: 50),
                _NextButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ===== CUSTOM BUTTONS =====

class _BackButton extends StatelessWidget {
  const _BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: const Icon(Icons.arrow_back, color: Colors.white, size: 36),
    );
  }
}

class _NextButton extends StatelessWidget {
  const _NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
      },
      child: const Icon(Icons.arrow_forward, color: Colors.white, size: 36),
    );
  }
}

/// ===== DOT INDICATOR =====
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

/// ===== ARC CLIPPER =====
class _ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
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
