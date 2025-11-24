import 'package:flutter/material.dart';

class PersonalisasiPage extends StatelessWidget {
  const PersonalisasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Personalisasi Page')),
      body: const Center(
        child: Text(
          'Welcome to the Personalisasi Page!',
          style: TextStyle(
            fontFamily: 'PlusJakartaSans',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
