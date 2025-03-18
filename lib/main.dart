import 'package:bacaan_solat/pages/main_page.dart';
import 'package:bacaan_solat/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(LabilApp());
}

class LabilApp extends StatelessWidget {
  const LabilApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashPage());
  }
}
