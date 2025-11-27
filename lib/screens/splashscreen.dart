import 'package:flutter/material.dart';



class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Flutter App',
      home: Scaffold(
        backgroundColor: Colors.white, // background putih
        appBar: AppBar(
          title: const Text('Hello Flutter!'),
        ),
        body: const Center(
          child: Text(
            'Selamat datang di Flutter!',
            style: TextStyle(
              fontSize: 24,          // ukuran teks
              fontWeight: FontWeight.bold, // tebal
              color: Colors.black,   // warna teks
            ),
          ),
        ),
      ),
    );
  }
}
