import 'package:flutter/material.dart';
import 'onboarding1.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    // Delay 5 detik lalu pindah ke Onboarding1
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Onboarding1()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // background putih
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/Clip path group.png',
              width: 99,
              height: 104,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 10),

            const Text(
              'HydropoMe',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color(0xFF179778),
              ),
            ),
            const SizedBox(height: 4),

            const Text(
              'Smart Hydroponic System',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF179778),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
