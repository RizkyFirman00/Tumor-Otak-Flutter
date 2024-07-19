import 'package:flutter/material.dart';

class PageResultDetection extends StatefulWidget {
  const PageResultDetection({super.key});

  @override
  State<PageResultDetection> createState() => _PageResultDetectionState();
}

class _PageResultDetectionState extends State<PageResultDetection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'Detection Tumour',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: const Color(0xFF0099FF),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage('images/detect_bg.png'), fit: BoxFit.fill),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 55, left: 30, right: 30),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Color(0xFF0099FF),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 80,
                    height: 380,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
