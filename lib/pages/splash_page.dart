import 'package:flutter/material.dart';
import 'dart:async';
import 'main_page.dart'; // Ganti dengan file main page kamu

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Timer untuk pindah ke halaman berikutnya
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo atau Lottie animation
            Image.asset(
              'assets/images/ic_bacaan.png', // Ganti dengan logo atau tambahkan Lottie
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 30),
            const Text(
              "APP SHOLAT",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 80),
            const CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
