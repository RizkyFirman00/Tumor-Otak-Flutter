import 'dart:io';

import 'package:flutter/material.dart';

class PageResultDetection extends StatelessWidget {
  final Map<String, dynamic> data;
  final File image;

  const PageResultDetection(
      {super.key, required this.data, required this.image});

  @override
  Widget build(BuildContext context) {
    // Menentukan pesan berdasarkan hasil deteksi
    String resultMessage;
    if (data['result'] == 'Normal') {
      resultMessage = 'Tidak ada tanda-tanda tumor pada citra';
    } else {
      resultMessage = 'Terdapat tanda-tanda tumor pada citra';
    }

    // Mengonversi probabilitas menjadi persentase
    double probability = data['probability'];
    String probabilityPercentage = (probability * 100).toStringAsFixed(2);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
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
          padding: const EdgeInsets.only(top: 35, left: 30, right: 30),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0099FF),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 80,
                    height: 380,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: image != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.file(
                              image!,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          )
                        : const Center(child: Text('No image selected')),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '- Hasil -',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                resultMessage,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 3),
              Text(
                '$probabilityPercentage%',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
