import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Flutter App',
      home: Scaffold(
        backgroundColor: Colors.white, // background putih
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min, // supaya widget tetap di tengah
            children: [      //CHILDERN HERE VAN
              Image.asset(
                'assets/Clip path group.png',
              width: 99,
              height: 104,
              fit: BoxFit.contain,
              ),
              Text(
                'HydropoMe',
                style: TextStyle(
                  fontSize: 35, // ukuran teks
                  fontWeight: FontWeight.bold, // tebal
                  color:Color(0xFF179778), // warna teks
                ),
              ),
              SizedBox(height: 1), // jarak antar teks
              Text(
                'Smart Hydroponic System',
                style: TextStyle(
                  fontSize: 20,
                  color:Color(0xFF179778), // warna teks bawah
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
