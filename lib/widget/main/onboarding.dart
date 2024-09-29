import 'package:flutter/material.dart';

class onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/image2.png",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Center(
          child: Column(
            children: [
              const SizedBox(
                height: 500,
              ),
              const Text(
                "مواصلاتي",
                style: TextStyle(
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black,
                        offset: Offset(7.0, 7.0),
                      ),
                    ],
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                textAlign: TextAlign.center,
                "تطبيق مواصلاتي يساعدك على العثور \nعلى أفضل وسيلة نقل لك",
                style: TextStyle(
                  shadows: [
                    Shadow(
                      blurRadius: 15.0,
                      color: Colors.black,
                      offset: Offset(15.0, 15.0),
                    ),
                  ],
                  fontSize: 20,
                  color: Color.fromARGB(255, 236, 236, 236),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  primary: Color(0xff799C90),
                  shadowColor: Colors.brown,
                  elevation: 20,
                  onPrimary: Colors.white,
                  minimumSize: Size(200, 50),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/main");
                },
                child: const Text("ابدأ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
