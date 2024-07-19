import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tumor_otak_flutter/pages/page_result_detection.dart';

class DetectionPage extends StatelessWidget {
  const DetectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'Insert Image',
          textAlign: TextAlign.center,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(right: 30),
                      iconColor: Colors.black,
                      backgroundColor: Color(0xFF0099FF),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.photo_camera_outlined),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Camera',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(left: 30),
                      iconColor: Colors.black,
                      backgroundColor: Color(0xFF0099FF),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Gallery',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.photo_outlined),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF0099FF)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageResultDetection()),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
