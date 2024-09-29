import 'package:flutter/material.dart';


class Ammanpoint1 extends StatefulWidget {
  const Ammanpoint1({super.key});

  @override
  _Ammanpoint1 createState() => _Ammanpoint1();
}

class _Ammanpoint1 extends State<Ammanpoint1> {
  List pictures = [
    "assets/amman/almahata.png",
    "assets/amman/shamal.png",
    "assets/amman/janoob.png",
  ];
  List names = [
    "مجمع المحطة",
    "مجمع الشمال",
    "مجمع الجنوب الجديد",
  ];
  List routes = ["/ammanPoint1", "/ammanPoint2", "/ammanPoint3"];
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
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
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
