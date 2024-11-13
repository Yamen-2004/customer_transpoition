import 'package:customer_transpoition/widget/position.dart';
import 'package:flutter/material.dart';

class ajlounpoints extends StatefulWidget {
  const ajlounpoints({super.key});

  @override
  _ajlounpoints createState() => _ajlounpoints();
}

class _ajlounpoints extends State<ajlounpoints> {
  List pictures = [
    "assets/points/ajlounpoint1.png",
  ];
  List names = [
    "مجمع عجلون",
  ];
  List routes = ["/ajlounPoint1"];
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
