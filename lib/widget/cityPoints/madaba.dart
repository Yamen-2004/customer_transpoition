import 'package:customer_transpoition/widget/position.dart';
import 'package:flutter/material.dart';

class madabapoints extends StatefulWidget {
  const madabapoints({super.key});

  @override
  _madabapoints createState() => _madabapoints();
}

class _madabapoints extends State<madabapoints> {
  List pictures = [
    "assets/amman/almahata.png",
    "assets/amman/shamal.png",
  ];
  List names = [
    "مجمع مادبا الشمالي",
    "مجمع مادبا الجنوبي",
  ];
  List routes = [
    "/madabaPoint1",
    "/madabaPoint2",
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
                    position(text: names[index])
                  ]),
                ],
              ),
            ),
          );
        });
  }
}
