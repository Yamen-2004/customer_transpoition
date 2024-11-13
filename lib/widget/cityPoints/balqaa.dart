import 'package:customer_transpoition/widget/position.dart';
import 'package:flutter/material.dart';

class balqaapoints extends StatefulWidget {
  const balqaapoints({super.key});

  @override
  _balqaapoint1 createState() => _balqaapoint1();
}

class _balqaapoint1 extends State<balqaapoints> {
  List pictures = [
    "assets/points/balqaapoint1.png",
    "assets/points/balqaapoint2.png",
    "assets/points/balqaapoint3.png",

  ];
  List names = [
    "مجمع السلط الخارجي",
    "مجمع البقعة",
    "مجمع  دير علا ",
  ];
  List routes = ["/balqaaPoint1", "/balqaaPoint2", "/balqaaPoint3"];
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
