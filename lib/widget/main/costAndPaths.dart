import 'package:flutter/material.dart';

class homePageCardOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Stack(children: [
            Opacity(
              opacity: 0.5,
              child: Image.asset(
                "assets/images/googleMap.png",
                height: 290,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 150),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    primary: const Color.fromARGB(255, 95, 95, 95),
                    minimumSize: const Size(50, 50),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/IrbidInfo");
                  },
                  child: const Text("Get Started"),
                ),
              ),
            ),
          ]),
          const Center(
              child: Text(
            "Irbid",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          )),
        ],
      ),
    );
  }
}
