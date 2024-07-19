import 'package:flutter/material.dart';
import 'package:tumor_otak_flutter/pages/page_splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tumor Otak",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF0099FF)),
        useMaterial3: true,
      ),
      home: SplashScreenPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
