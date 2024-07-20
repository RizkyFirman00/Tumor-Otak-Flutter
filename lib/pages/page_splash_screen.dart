import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tumor_otak_flutter/conns.dart';
import 'package:tumor_otak_flutter/pages/page_detection.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    _navigateToDetectionPage();
  }

  _navigateToDetectionPage() async {
    await Future.delayed(const Duration(seconds: 2), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const DetectionPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('images/main_bg.png'), fit: BoxFit.fill),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Center(
          child: Image.asset(
            'images/logo.png',
            height: 200,
            width: 200,
          ),
        ),
      ],
    );
  }
}
