import 'package:flutter/material.dart';

class irbidpoint1 extends StatefulWidget {
  const irbidpoint1({super.key});

  @override
  _irbidpoint1 createState() => _irbidpoint1();
}

class _irbidpoint1 extends State<irbidpoint1> {
  List pictures = [
    "assets/Irbid/ghor.png",
    "assets/Irbid/khalil.png",
    "assets/Irbid/old.png",
    "assets/Irbid/shamal.png",
    "assets/Irbid/amman.png",
  ];
  List names = [
    " مجمع الأغوار الجديد",
    "مجمع الشيخ خليل",
    "مجمع الغور القديم",
    "المجمع الشمالي",
    "مجمع عمان الجديد",
  ];
  List routes = [
    "/ghor",
    "/khalil",
    "/oldghor",
    "/shamali",
    "/amman",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pictures.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 0,
          crossAxisSpacing: 7,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, '${routes[index]}'),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: [
                  Stack(children: [
                    Image.asset(pictures[index],
                        fit: BoxFit.cover, height: 194, width: double.infinity),
                    Container(
                      margin: const EdgeInsets.only(top: 157),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          names[index],
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ]),
                ],
              ),
            ),
          );
        });
  }
}
