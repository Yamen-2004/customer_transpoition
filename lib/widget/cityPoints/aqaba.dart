import 'package:customer_transpoition/widget/position.dart';
import 'package:flutter/material.dart';

class aqabapoints extends StatefulWidget {
  const aqabapoints({super.key});

  @override
  _aqabapoints createState() => _aqabapoints();
}

class _aqabapoints extends State<aqabapoints> {
  List pictures = [
    "assets/points/aqabapoint1.png",
  ];
  List names = [
    "مجمع سفريات العقبة",
  ];
  List routes = ["/aqabaPoint1"];
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
