import 'package:customer_transpoition/widget/position.dart';
import 'package:flutter/material.dart';

class karakpoints extends StatefulWidget {
  const karakpoints({super.key});

  @override
  _karakpoints createState() => _karakpoints();
}

class _karakpoints extends State<karakpoints> {
  List pictures = [
    "assets/amman/shamal.png",
    "assets/amman/shamal.png",
  ];
  List names = [
    "مجمع الكرك الداخلي",
    "مجمع الكرك الخارجي",
  ];
  List routes = ["/karakPoint1", "/karakPoint2"];
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
                    position(text: names[index])
                  ]),
                ],
              ),
            ),
          );
        });
  }
}
